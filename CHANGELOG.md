# Changelog

## [1.30.0](https://github.com/laurigates/inkscape-silhouette/compare/v1.29.0...v1.30.0) (2026-11-11)


### Features

* add bluetooth support ([9b58fb6](https://github.com/laurigates/inkscape-silhouette/commit/9b58fb692563105c0f673eba4a971209a40b385c))
* add Cameo 5 Alpha A4 regmark template ([7fbb97e](https://github.com/laurigates/inkscape-silhouette/commit/7fbb97ef351050200dae5c7ad8e1b48d6643f9f2))
* Add full registration marks (print-and-cut) support for Silhouette Cameo Pro MK-II ([39a349d](https://github.com/laurigates/inkscape-silhouette/commit/39a349d7b1fc6cf99323087453f46c7b47b7d194))
* add macOS Bluetooth LE transport ([d883d2a](https://github.com/laurigates/inkscape-silhouette/commit/d883d2af06a14060fb91830e6922b929500ce9d3))
* Add support for Silhouette Cameo 5 Alpha Plus ([#370](https://github.com/laurigates/inkscape-silhouette/issues/370)) ([c54a94e](https://github.com/laurigates/inkscape-silhouette/commit/c54a94ece452a987c2fa8cafbab22c947a3ae38a))
* Enable generating Cameo 5A (four-corner) regmarks ([4811b42](https://github.com/laurigates/inkscape-silhouette/commit/4811b42cdd9f9429f3bb0b4b9d70997b6c67703f))


### Bug Fixes

* abort jobs when media is not loaded ([c86094d](https://github.com/laurigates/inkscape-silhouette/commit/c86094ddc15bee62869917a9a6ba1a34681058cc))
* align BLE transport with protocol findings ([380fdf7](https://github.com/laurigates/inkscape-silhouette/commit/380fdf7b86ac2d50f181fa4e2c718a3b5cefa958))
* answer registration mark searches in dry runs ([1eb3894](https://github.com/laurigates/inkscape-silhouette/commit/1eb389407948d518b43911f878571f5e6ebc43ac)), closes [#397](https://github.com/laurigates/inkscape-silhouette/issues/397)
* isolate wxPython from Inkscape libraries ([cca1427](https://github.com/laurigates/inkscape-silhouette/commit/cca14276152024fc670843770071f91e7532a814))
* omit deprecated return value ([3ea6aac](https://github.com/laurigates/inkscape-silhouette/commit/3ea6aac40795e673fbcd1578a1863cd677e51828)), closes [#342](https://github.com/laurigates/inkscape-silhouette/issues/342)
* remove unncecessary X-offset that breaks cutting added due to experimentation ([1179210](https://github.com/laurigates/inkscape-silhouette/commit/11792104ae146e8ace9aa9e950f5b36b9c891740))


### Reverts

* leave wxPython startup unchanged ([d1fdbca](https://github.com/laurigates/inkscape-silhouette/commit/d1fdbca76f3232def5d645b24b71408b8a96e83e))
