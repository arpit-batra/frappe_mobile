import 'dart:isolate';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_downloader/flutter_downloader.dart';

import 'utils/helpers.dart';
import 'utils/http.dart';

import 'app/locator.dart';
import 'app.dart';

// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//     FlutterLocalNotificationsPlugin();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupLocator();
  // await resetValues();
  await initDb();
  await FlutterDownloader.initialize();
  FlutterDownloader.registerCallback(downloadCallback);
  await initApiConfig();
  // await initLocalNotifications();
  // await initAutoSync();

  runApp(
    // DevicePreview(
    //   enabled: !kReleaseMode,
    //   builder: (context) => FrappeApp(),
    // ),
    FrappeApp()
  );
}

void downloadCallback(String id, DownloadTaskStatus status, int progress) {
  final SendPort? send =
      IsolateNameServer.lookupPortByName('downloader_send_port');
      if(send != null) {
        send.send([id, status, progress]);
      }
}
