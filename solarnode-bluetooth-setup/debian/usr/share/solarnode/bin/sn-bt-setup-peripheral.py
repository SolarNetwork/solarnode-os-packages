import array
import logging
import os.path
import socket
import struct
import sys
import time

import dbus
import dbus.exceptions
import dbus.mainloop.glib
import dbus.service

MainLoop = None
try:
    from gi.repository import GLib

    MainLoop = GLib.MainLoop
except ImportError:
    import gobject as GObject

    MainLoop = GObject.MainLoop

DBUS_OM_IFACE = "org.freedesktop.DBus.ObjectManager"
DBUS_PROP_IFACE = "org.freedesktop.DBus.Properties"

BLUEZ_ADAPTER_IFACE = "org.bluez.Adapter1"
BLUEZ_AGENTMANAGER_IFACE = "org.bluez.AgentManager1"

GATT_SERVICE_IFACE = "org.bluez.GattService1"
GATT_CHRC_IFACE = "org.bluez.GattCharacteristic1"
GATT_DESC_IFACE = "org.bluez.GattDescriptor1"

LE_ADVERTISING_MANAGER_IFACE = "org.bluez.LEAdvertisingManager1"
LE_ADVERTISEMENT_IFACE = "org.bluez.LEAdvertisement1"

BUS_NAME = "org.bluez"
GATT_MANAGER_IFACE = "org.bluez.GattManager1"

AGENT_INTERFACE = "org.bluez.Agent1"
AGENT_PATH = "/net/solarnetwork/node/setup/agent"

SN_STOMP_ADDRESS = '127.0.0.1'
SN_STOMP_PORT = 8780

logger = logging.getLogger(__name__)
logger.setLevel(logging.DEBUG)
logHandler = logging.StreamHandler()
formatter = logging.Formatter("%(asctime)s - %(name)s - %(levelname)s - %(message)s")
logHandler.setFormatter(formatter)
logger.addHandler(logHandler)

logger.setLevel(logging.DEBUG)

bus = None
mainloop = None


class InvalidArgsException(dbus.exceptions.DBusException):
    _dbus_error_name = "org.freedesktop.DBus.Error.InvalidArgs"


class NotSupportedException(dbus.exceptions.DBusException):
    _dbus_error_name = "org.bluez.Error.NotSupported"


class NotPermittedException(dbus.exceptions.DBusException):
    _dbus_error_name = "org.bluez.Error.NotPermitted"


class InvalidValueLengthException(dbus.exceptions.DBusException):
    _dbus_error_name = "org.bluez.Error.InvalidValueLength"


class FailedException(dbus.exceptions.DBusException):
    _dbus_error_name = "org.bluez.Error.Failed"


def find_adapter(bus):
    """
    Returns the first object that the bluez service has that has a GattManager1 interface
    """
    remote_om = dbus.Interface(bus.get_object(BUS_NAME, "/"), DBUS_OM_IFACE)
    objects = remote_om.GetManagedObjects()

    for o, props in objects.items():
        if GATT_MANAGER_IFACE in props.keys():
            return o

    return None


class Application(dbus.service.Object):
    """
    org.bluez.GattApplication1 interface implementation.
    """

    def __init__(self, bus):
        self.path = "/"
        self.services = []
        dbus.service.Object.__init__(self, bus, self.path)

    def get_path(self):
        return dbus.ObjectPath(self.path)

    def add_service(self, service):
        self.services.append(service)

    @dbus.service.method(DBUS_OM_IFACE, out_signature="a{oa{sa{sv}}}")
    def GetManagedObjects(self):
        response = {}
        logger.info("GetManagedObjects")

        for service in self.services:
            response[service.get_path()] = service.get_properties()
            chrcs = service.get_characteristics()
            for chrc in chrcs:
                response[chrc.get_path()] = chrc.get_properties()
                descs = chrc.get_descriptors()
                for desc in descs:
                    response[desc.get_path()] = desc.get_properties()

        return response


def register_app_cb():
    logger.info("GATT application registered")


def register_app_error_cb(error):
    logger.critical("Failed to register application: " + str(error))
    mainloop.quit()


class Service(dbus.service.Object):
    """
    org.bluez.GattService1 interface implementation.
    """

    PATH_BASE = "/net/solarnetwork/node/setup/service"

    def __init__(self, bus, index, uuid, primary):
        self.path = self.PATH_BASE + str(index)
        self.bus = bus
        self.uuid = uuid
        self.primary = primary
        self.characteristics = []
        dbus.service.Object.__init__(self, bus, self.path)

    def get_properties(self):
        return {
            GATT_SERVICE_IFACE: {
                "UUID": self.uuid,
                "Primary": self.primary,
                "Characteristics": dbus.Array(
                    self.get_characteristic_paths(), signature="o"
                ),
            }
        }

    def get_path(self):
        return dbus.ObjectPath(self.path)

    def add_characteristic(self, characteristic):
        self.characteristics.append(characteristic)

    def get_characteristic_paths(self):
        result = []
        for chrc in self.characteristics:
            result.append(chrc.get_path())
        return result

    def get_characteristics(self):
        return self.characteristics

    @dbus.service.method(DBUS_PROP_IFACE, in_signature="s", out_signature="a{sv}")
    def GetAll(self, interface):
        if interface != GATT_SERVICE_IFACE:
            raise InvalidArgsException()

        return self.get_properties()[GATT_SERVICE_IFACE]


class Characteristic(dbus.service.Object):
    """
    org.bluez.GattCharacteristic1 interface implementation.
    """

    def __init__(self, bus, index, uuid, flags, service):
        self.path = service.path + "/char" + str(index)
        self.bus = bus
        self.uuid = uuid
        self.service = service
        self.flags = flags
        self.descriptors = []
        dbus.service.Object.__init__(self, bus, self.path)

    def get_properties(self):
        return {
            GATT_CHRC_IFACE: {
                "Service": self.service.get_path(),
                "UUID": self.uuid,
                "Flags": self.flags,
                "Descriptors": dbus.Array(self.get_descriptor_paths(), signature="o"),
            }
        }

    def get_path(self):
        return dbus.ObjectPath(self.path)

    def add_descriptor(self, descriptor):
        self.descriptors.append(descriptor)

    def get_descriptor_paths(self):
        result = []
        for desc in self.descriptors:
            result.append(desc.get_path())
        return result

    def get_descriptors(self):
        return self.descriptors

    @dbus.service.method(DBUS_PROP_IFACE, in_signature="s", out_signature="a{sv}")
    def GetAll(self, interface):
        if interface != GATT_CHRC_IFACE:
            raise InvalidArgsException()

        return self.get_properties()[GATT_CHRC_IFACE]

    @dbus.service.method(GATT_CHRC_IFACE, in_signature="a{sv}", out_signature="ay")
    def ReadValue(self, options):
        logger.info("Default ReadValue called, returning error")
        raise NotSupportedException()

    @dbus.service.method(GATT_CHRC_IFACE, in_signature="aya{sv}")
    def WriteValue(self, value, options):
        logger.info("Default WriteValue called, returning error")
        raise NotSupportedException()

    @dbus.service.method(GATT_CHRC_IFACE)
    def StartNotify(self):
        logger.info("Default StartNotify called, returning error")
        raise NotSupportedException()

    @dbus.service.method(GATT_CHRC_IFACE)
    def StopNotify(self):
        logger.info("Default StopNotify called, returning error")
        raise NotSupportedException()

    @dbus.service.signal(DBUS_PROP_IFACE, signature="sa{sv}as")
    def PropertiesChanged(self, interface, changed, invalidated):
        pass

    ## @dbus.service.signal(DBUS_PROP_IFACE, signature="o"


class Descriptor(dbus.service.Object):
    """
    org.bluez.GattDescriptor1 interface implementation.
    """

    def __init__(self, bus, index, uuid, flags, characteristic):
        self.path = characteristic.path + "/desc" + str(index)
        self.bus = bus
        self.uuid = uuid
        self.flags = flags
        self.chrc = characteristic
        dbus.service.Object.__init__(self, bus, self.path)

    def get_properties(self):
        return {
            GATT_DESC_IFACE: {
                "Characteristic": self.chrc.get_path(),
                "UUID": self.uuid,
                "Flags": self.flags,
            }
        }

    def get_path(self):
        return dbus.ObjectPath(self.path)

    @dbus.service.method(DBUS_PROP_IFACE, in_signature="s", out_signature="a{sv}")
    def GetAll(self, interface):
        if interface != GATT_DESC_IFACE:
            raise InvalidArgsException()

        return self.get_properties()[GATT_DESC_IFACE]

    @dbus.service.method(GATT_DESC_IFACE, in_signature="a{sv}", out_signature="ay")
    def ReadValue(self, options):
        logger.info("Default ReadValue called, returning error")
        raise NotSupportedException()

    @dbus.service.method(GATT_DESC_IFACE, in_signature="aya{sv}")
    def WriteValue(self, value, options):
        logger.info("Default WriteValue called, returning error")
        raise NotSupportedException()


class Advertisement(dbus.service.Object):
    """
    A BlueZ advertisement.
    """
    PATH_BASE = "/net/solarnetwork/node/setup/advertisement"

    def __init__(self, bus, index, advertising_type):
        self.path = self.PATH_BASE + str(index)
        self.bus = bus
        self.ad_type = advertising_type
        self.service_uuids = None
        self.manufacturer_data = None
        self.solicit_uuids = None
        self.service_data = None
        self.local_name = None
        self.include_tx_power = None
        self.data = None
        dbus.service.Object.__init__(self, bus, self.path)

    def get_properties(self):
        properties = dict()
        properties["Type"] = self.ad_type
        if self.service_uuids is not None:
            properties["ServiceUUIDs"] = dbus.Array(self.service_uuids, signature="s")
        if self.solicit_uuids is not None:
            properties["SolicitUUIDs"] = dbus.Array(self.solicit_uuids, signature="s")
        if self.manufacturer_data is not None:
            properties["ManufacturerData"] = dbus.Dictionary(
                self.manufacturer_data, signature="qv"
            )
        if self.service_data is not None:
            properties["ServiceData"] = dbus.Dictionary(
                self.service_data, signature="sv"
            )
        if self.local_name is not None:
            properties["LocalName"] = dbus.String(self.local_name)
        if self.include_tx_power is not None:
            properties["IncludeTxPower"] = dbus.Boolean(self.include_tx_power)

        if self.data is not None:
            properties["Data"] = dbus.Dictionary(self.data, signature="yv")
        return {LE_ADVERTISEMENT_IFACE: properties}

    def get_path(self):
        return dbus.ObjectPath(self.path)

    def add_service_uuid(self, uuid):
        if not self.service_uuids:
            self.service_uuids = []
        self.service_uuids.append(uuid)

    def add_solicit_uuid(self, uuid):
        if not self.solicit_uuids:
            self.solicit_uuids = []
        self.solicit_uuids.append(uuid)

    def add_manufacturer_data(self, manuf_code, data):
        if not self.manufacturer_data:
            self.manufacturer_data = dbus.Dictionary({}, signature="qv")
        self.manufacturer_data[manuf_code] = dbus.Array(data, signature="y")

    def add_service_data(self, uuid, data):
        if not self.service_data:
            self.service_data = dbus.Dictionary({}, signature="sv")
        self.service_data[uuid] = dbus.Array(data, signature="y")

    def add_local_name(self, name):
        if not self.local_name:
            self.local_name = ""
        self.local_name = dbus.String(name)

    def add_data(self, ad_type, data):
        if not self.data:
            self.data = dbus.Dictionary({}, signature="yv")
        self.data[ad_type] = dbus.Array(data, signature="y")

    @dbus.service.method(DBUS_PROP_IFACE, in_signature="s", out_signature="a{sv}")
    def GetAll(self, interface):
        logger.info("GetAll")
        if interface != LE_ADVERTISEMENT_IFACE:
            raise InvalidArgsException()
        logger.info("returning props")
        return self.get_properties()[LE_ADVERTISEMENT_IFACE]

    @dbus.service.method(LE_ADVERTISEMENT_IFACE, in_signature="", out_signature="")
    def Release(self):
        logger.info("%s: Released!" % self.path)


def register_ad_cb():
    logger.info("Advertisement registered")


def register_ad_error_cb(error):
    logger.critical("Failed to register advertisement: " + str(error))
    mainloop.quit()


class CharacteristicUserDescriptionDescriptor(Descriptor):
    """
    Writable CUD descriptor.
    """
    CUD_UUID = "2901"

    def __init__(
            self, bus, index, characteristic,
    ):
        self.value = array.array("B", characteristic.description.encode())
        self.value = self.value.tolist()
        Descriptor.__init__(self, bus, index, self.CUD_UUID, ["read"], characteristic)

    def ReadValue(self, options):
        return self.value

    def WriteValue(self, value, options):
        if not self.writable:
            raise NotPermittedException()
        self.value = value


class UartAdvertisement(Advertisement):
    """
    Generic UUART advertisement.
    """
    uuid = '7d2fd14b-8897-48de-9719-15aa4edb5d57'

    def __init__(self, bus, index, local_name):
        Advertisement.__init__(self, bus, index, "peripheral")
        self.add_service_uuid(self.uuid)

        self.add_local_name(local_name)
        self.include_tx_power = True


class Agent(dbus.service.Object):
    """
    A BlueZ agent that manages authorization requests.
    """
    exit_on_release = True

    def set_exit_on_release(self, exit_on_release):
        self.exit_on_release = exit_on_release

    @dbus.service.method(AGENT_INTERFACE, in_signature="", out_signature="")
    def Release(self):
        logger.info("Release")
        if self.exit_on_release:
            mainloop.quit()

    @dbus.service.method(AGENT_INTERFACE, in_signature="os", out_signature="")
    def AuthorizeService(self, device, uuid):
        logger.info("AuthorizeService (%s, %s)" % (device, uuid))
        authorize = ask("Authorize connection (yes/no): ")
        if authorize == "yes":
            return
        raise Rejected("Connection rejected by user")

    @dbus.service.method(AGENT_INTERFACE, in_signature="o", out_signature="s")
    def RequestPinCode(self, device):
        logger.info("RequestPinCode (%s)" % (device))
        set_trusted(device)
        return ask("Enter PIN Code: ")

    @dbus.service.method(AGENT_INTERFACE, in_signature="o", out_signature="u")
    def RequestPasskey(self, device):
        logger.info("RequestPasskey (%s)" % (device))
        set_trusted(device)
        passkey = ask("Enter passkey: ")
        return dbus.UInt32(passkey)

    @dbus.service.method(AGENT_INTERFACE, in_signature="ouq", out_signature="")
    def DisplayPasskey(self, device, passkey, entered):
        logger.info("DisplayPasskey (%s, %06u entered %u)" % (device, passkey, entered))

    @dbus.service.method(AGENT_INTERFACE, in_signature="os", out_signature="")
    def DisplayPinCode(self, device, pincode):
        logger.info("DisplayPinCode (%s, %s)" % (device, pincode))

    @dbus.service.method(AGENT_INTERFACE, in_signature="ou", out_signature="")
    def RequestConfirmation(self, device, passkey):
        logger.info("RequestConfirmation (%s, %06d)" % (device, passkey))
        confirm = ask("Confirm passkey (yes/no): ")
        if confirm == "yes":
            set_trusted(device)
            return
        raise Rejected("Passkey doesn't match")

    @dbus.service.method(AGENT_INTERFACE, in_signature="o", out_signature="")
    def RequestAuthorization(self, device):
        logger.info("RequestAuthorization (%s)" % (device))
        auth = ask("Authorize? (yes/no): ")
        if auth == "yes":
            return
        raise Rejected("Pairing rejected")

    @dbus.service.method(AGENT_INTERFACE, in_signature="", out_signature="")
    def Cancel(self):
        logger.info("Cancel")


def ask(prompt):
    try:
        return raw_input(prompt)
    except:
        return input(prompt)


def set_trusted(path):
    props = dbus.Interface(
        bus.get_object("org.bluez", path), "org.freedesktop.DBus.Properties"
    )
    props.Set("org.bluez.Device1", "Trusted", True)


class Rejected(dbus.DBusException):
    _dbus_error_name = "org.bluez.Error.Rejected"


class SmartAgent(Agent):
    """
    An agent which mimics NoInputNoOutput, but will allow you to
    programmatically manage authorization.
    """

    @dbus.service.method(AGENT_INTERFACE, in_signature="os", out_signature="")
    def AuthorizeService(self, device, uuid):
        logger.info("AuthorizeService (%s, %s)" % (device, uuid))
        return

    @dbus.service.method(AGENT_INTERFACE, in_signature="o", out_signature="s")
    def RequestPinCode(self, device):
        logger.info("RequestPinCode (%s)" % (device))
        set_trusted(device)
        return

    @dbus.service.method(AGENT_INTERFACE, in_signature="o", out_signature="u")
    def RequestPasskey(self, device):
        logger.info("RequestPasskey (%s)" % (device))
        set_trusted(device)
        return;

    @dbus.service.method(AGENT_INTERFACE, in_signature="ou", out_signature="")
    def RequestConfirmation(self, device, passkey):
        logger.info("RequestConfirmation (%s, %06d)" % (device, passkey))
        set_trusted(device)
        return

    @dbus.service.method(AGENT_INTERFACE, in_signature="o", out_signature="")
    def RequestAuthorization(self, device):
        logger.info("RequestAuthorization (%s)" % (device))
        return


class TxCharacteristic(Characteristic):
    """
    A read characteristic that stores read value corresponding to device address.
    """
    uuid = '7d2fd14d-8897-48de-9719-15aa4edb5d57'
    description = 'Read the SolarNetwork STOMP server response.'

    def __init__(self, bus, index, service):
        Characteristic.__init__(self, bus, index, self.uuid,
                                ['read'], service)
        self.add_descriptor(CharacteristicUserDescriptionDescriptor(bus, 1, self))

        self.device_value = {}

    def ReadValue(self, options):
        logger.debug(options['device'])
        logger.debug(self.device_value[options['device']])
        return self.device_value[options['device']]

    def set_value(self, value, device):
        self.device_value[device] = value


class RxCharacteristic(Characteristic):
    """
    A write characteristic that interacts with the local SolarNetwork STOMP server.
    """
    uuid = '7d2fd14c-8897-48de-9719-15aa4edb5d57'
    description = 'Submit frames to SolarNetwork STOMP server.'

    def __init__(self, bus, index, service, tx_set_value):
        Characteristic.__init__(self, bus, index, self.uuid,
                                ['write'], service)
        self.add_descriptor(CharacteristicUserDescriptionDescriptor(bus, 1, self))
        self.tx_set_value = tx_set_value
        self.central_sockets = {}

    def __get_socket(self, device):
        if device not in self.central_sockets:
            sock = self.__new_socket(device, SN_STOMP_ADDRESS, SN_STOMP_PORT)

            if sock is None:
                return None

            self.central_sockets[device] = sock
            return sock

        # Check the connection of the stored socket.
        #
        # If the response data is empty, the server has closed the connection.
        # If this is the case, then get a new socket.
        try:
            sock = self.central_sockets[device]
            data = sock.recv(16, socket.MSG_DONTWAIT | socket.MSG_PEEK)

            if len(data) == 0:
                sock = self.__new_socket(device, SN_STOMP_ADDRESS, SN_STOMP_PORT)

                if sock is None:
                    return None

                self.central_sockets[device] = sock
        except:
            pass

        return self.central_sockets[device]

    def __new_socket(self, device, address, port):
        try:
            sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            sock.connect((SN_STOMP_ADDRESS, SN_STOMP_PORT))
            return sock

        # If the server is currently not running or not accepting
        # connections, return None.
        except errno.ECONNREFUSED:
            return None

    def send_value(self, value, device):
        sock = self.__get_socket(device)
        if sock is None:
            self.send_value(b'\x07', device)

        byteValue = (''.join([chr(dbusByte) for dbusByte in value])).encode()
        logger.debug(byteValue)
        sock.sendall(byteValue)

        try:
            sock.settimeout(0.2)
            data = sock.recv(4096)
        except socket.timeout:
            data = b'\x00'

        logger.debug(data)

        self.tx_set_value(data, device)

    def WriteValue(self, value, options):
        logger.debug(options['device'])
        self.send_value(value, options['device'])


class UartService(Service):
    """
    The UUART service that interacts with the SolarNetwork STOMP server.
    """
    uuid = '7d2fd14b-8897-48de-9719-15aa4edb5d57'

    def __init__(self, bus, index):
        Service.__init__(self, bus, index, self.uuid, True)
        self.add_characteristic(TxCharacteristic(bus, 0, self))
        self.add_characteristic(RxCharacteristic(bus, 1, self, self.characteristics[0].set_value))


def set_state(state, adapter_props):
    value = None
    if state is True:
        value = dbus.Boolean(1)
        logger.info("Setting host state to ON...")
    else:
        logger.info("Setting host state to OFF...")
        value = dbus.Boolean(0)

    adapter_props.Set(BLUEZ_ADAPTER_IFACE, "Powered", value)
    adapter_props.Set(BLUEZ_ADAPTER_IFACE, "Discoverable", value)
    adapter_props.Set(BLUEZ_ADAPTER_IFACE, "Pairable", value)


def main():
    global bus
    global mainloop

    dbus.mainloop.glib.DBusGMainLoop(set_as_default=True)
    bus = dbus.SystemBus()

    adapter = find_adapter(bus)
    if not adapter:
        logger.critical("GattManager1 interface not found")
        return

    adapter_obj = bus.get_object(BUS_NAME, adapter)
    adapter_props = dbus.Interface(adapter_obj, DBUS_PROP_IFACE)

    # Get the required local_name
    if os.path.exists('/etc/machine-info') is False:
        logger.info("Node has not been registered")
        set_state(False, adapter_props)
        sys.exit(0)

    try:
        with open('/etc/machine-info') as f:
            lines = f.readlines()
            for line in lines:
                if line.startswith('PRETTY_HOSTNAME='):
                    local_name = line.split('=')[1].strip().replace('"', '')
    except:
        logger.critical("Cannot get PRETTY_HOSTNAME")
        set_state(False, adapter_props)
        return

    set_state(True, adapter_props)

    # Get manager objects.
    service_manager = dbus.Interface(adapter_obj, GATT_MANAGER_IFACE)
    ad_manager = dbus.Interface(adapter_obj, LE_ADVERTISING_MANAGER_IFACE)

    # Create UART advertisement.
    advertisement = UartAdvertisement(bus, 0, local_name)
    obj = bus.get_object(BUS_NAME, "/org/bluez")

    # Create Agent
    #
    # Only use if the any of the default agent behaviours aren't sufficient.
    # Also check for sspmode usage for adapter.
    # agent = SmartAgent(bus, AGENT_PATH)
    agent = Agent(bus, AGENT_PATH)

    app = Application(bus)
    app.add_service(UartService(bus, 2))

    mainloop = MainLoop()

    # Register the agent.
    agent_manager = dbus.Interface(obj, BLUEZ_AGENTMANAGER_IFACE)
    agent_manager.RegisterAgent(agent, "NoInputNoOutput")
    logger.info("Agent registered")

    # Register the advertisement.
    ad_manager.RegisterAdvertisement(
        advertisement.get_path(),
        {},
        reply_handler=register_ad_cb,
        error_handler=register_ad_error_cb,
    )
    logger.info("Advertisement registered")

    logger.info("Registering GATT application...")
    service_manager.RegisterApplication(
        app.get_path(),
        {},
        reply_handler=register_app_cb,
        error_handler=[register_app_error_cb],
    )
    agent_manager.RequestDefaultAgent(AGENT_PATH)

    try:
        mainloop.run()
    except KeyboardInterrupt:
        logger.info("Exiting mainloop...")
        sys.exit(0)


if __name__ == "__main__":
    main()
