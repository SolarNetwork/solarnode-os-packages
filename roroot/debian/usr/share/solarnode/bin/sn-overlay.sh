enable_overlayfs() {
  KERN=$(uname -r)
  INITRD="initrd.img-$KERN-sn-roroot"

  # mount the boot partition as writable if it isn't already
  if [ $(get_bootro_now) -eq 0 ] ; then
    if ! mount -o remount,rw /boot 2>/dev/null ; then
      echo "Unable to mount boot partition as writable - cannot enable"
      return 1
    fi
    BOOTRO=yes
  else
    BOOTRO=no
  fi
  
  # add the overlay to the list of modules
  if ! grep -q overlay /etc/initramfs-tools/modules > /dev/null; then
    echo overlay >> /etc/initramfs-tools/modules
  fi

  # build the new initramfs
  update-initramfs -c -k "$KERN"

  # rename it so we know it has overlay added
  mv /boot/initrd.img-"$KERN" /boot/"$INITRD"

  # there is now a modified initramfs ready for use...

  # modify config.txt
  sed -i /boot/config.txt -e "/initramfs.*/d" 
  echo initramfs "$INITRD" >> /boot/config.txt

  # modify command line
  if ! grep -q "boot=sn-roroot" /boot/cmdline.txt ; then
    sed -i /boot/cmdline.txt -e "s/^/boot=sn-roroot /"
  fi

  if [ "$BOOTRO" = "yes" ] ; then
    if ! mount -o remount,ro /boot 2>/dev/null ; then
      echo "Unable to remount boot partition as read-only"
    fi
  fi
}
