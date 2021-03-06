import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_states/pages/primary_page.dart';
import 'package:flutter_states/pages/secondary_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light, //top bar icons
    ));
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'primary',
        routes: {
          'primary': (_) => PrimaryPage(),
          'secondary': (_) => SecondaryPage()
        });
  }
}
