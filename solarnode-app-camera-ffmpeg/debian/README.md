# SolarNode App - FFmpeg Camera Support

This directory contains support for building the `solarnode-app-camera-ffmpeg` package. This package
provides support for `ffmpeg` based camera integration.

## Camera Control (FFmpeg)

Here is an example SolarNode configuration:

<img alt="Camera ffmpeg Control settings" src="docs/camera-ffmpeg-control-settings@2x.png" width="827">

### Example ffmpeg Options

Here's an example for a Ubiquiti network camera that scales the image to 320x240:

```
-rtsp_transport tcp -i rtsp://ubnt:ubnt@192.168.178.188:554/s0 -vframes 1 -vf scale=480:-1 -q:v 2
```

This reads one frame from an RTSP video stream, scales it to 480px wide maintaining the source
aspect ratio, and encodes the output image with a quality of 2 (2-31, 2 being best quality).

# S3 Storage Service

The S3 Storage Service provided by the [S3 Storage package][solarnode-app-storage-s3]
can be used as a destination to upload captured photos. You'd need to also configure a
Storage Service File Watcher service, for example:

<img alt="Storage Service File Watcher settings" src="docs/storage-service-file-watcher-settings@2x.png" width="845">

# Old media cleanup timer

This package installs a `solarnode-app-camera-ffmpeg-cleaner` timer service that runs daily to
clean out old media files captured by the camera plugin. The
`/etc/default/solarnode-app-camera-ffmpeg` file contains the configurable setting for how many
days of media are retained.

# Building

You must also clone the [solarnetwork-build][sn-build] repository in this directory (or make a
symlink to it). Then run `make` to build the package, which will produce
`solarnode-app-camera-ffmpeg_VERSION_all.deb` in this directory.


[camera-control-signal]: https://github.com/SolarNetwork/solarnetwork-node/tree/develop/net.solarnetwork.node.control.camera.ffmpeg#instruction-support
[solarnode-app-storage-s3]: ../../solarnode-app-storage-s3/debian/
[sn-deploy]: https://github.com/SolarNetwork/solarnetwork-build/tree/master/solarnode-deploy/generic
[sn-build]: https://github.com/SolarNetwork/solarnetwork-build/
