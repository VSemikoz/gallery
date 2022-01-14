import 'package:flutter/material.dart';
import 'package:gallery/src/common/injection.dart';

import 'app.dart';

void main() => setupApp().then((value) => runApp(const GalleryApp()));

Future<void> setupApp() async {
  await configureInjection();
}
