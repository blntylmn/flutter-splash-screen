import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n_delegate.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'screen_one.dart';
import 'screen_two.dart';
import 'screen_three.dart';

var router = <String, WidgetBuilder>{
  "/screen-2": (BuildContext context) => ScreenTwo(),
  "/screen-3": (BuildContext context) => ScreenThree(),
};

void main() => runApp(MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primaryColor: new Color(0xff622f74),
        accentColor: Colors.orange,
      ),
      localizationsDelegates: [
        // FlutterI18nDelegate(useCountryCode: false, fallbackFile: 'en', path: 'assets/locales'),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [const Locale("en"), const Locale("tr")],
      debugShowCheckedModeBanner: false,
      // home: ScreenOne(),
      home: Scaffold(
        body: Center(
          child: Text('Test'),
        ),
      ),
      routes: router,
    ));
