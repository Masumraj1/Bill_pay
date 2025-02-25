

import 'package:flutter/material.dart';

import 'app/my_app.dart';
import 'app/utils/device_utils.dart';



void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  DeviceUtils.lockDevicePortrait();

  runApp(
    const MyApp(), // Wrap your app
  );

}



