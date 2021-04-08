import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tedera/screen/home/home_web.dart';
import 'package:tedera/screen/spalash_screen.dart';
import 'package:tedera/util/theme_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
void main() {

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: CustomTheme.lightTheme,
      home: kIsWeb?HomeWeb():SplashScreen(),
    );
  }
}
