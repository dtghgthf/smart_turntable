import 'package:flutter/material.dart';
import 'package:flutter_nfc_kit/flutter_nfc_kit.dart';
import 'package:smart_turntable/pages/HomePage.dart';
import 'package:smart_turntable/util/Theme.dart';
import 'package:smart_turntable/util/custom_widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: Scaffold(
        body: FutureBuilder(
          future: FlutterNfcKit.nfcAvailability,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return WavingProgressIndicator();
            } else if (snapshot.hasError) {
              throw "Error in FutureBuilder: ${snapshot.error}";
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.data == NFCAvailability.available) {
                return HomePage();
              } else {
                return HomePage();//Text("NFC ERROR");
              }
            } else {
              return Text("ERROR: ${snapshot.data}");
            }
          },
        ),
      ),
    );
  }
}
