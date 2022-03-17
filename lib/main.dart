import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'OnBoardingPage.dart';
import 'DashboardPage.dart';
import 'LoginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './common/utility.dart' as utility;

void main() => runApp(App());

class App extends StatefulWidget {

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  bool showIntroScreen = true;
  bool loader = true;

  @override
  void initState() {
    print('build init funciton called');
    super.initState();
    _prefs.then((SharedPreferences prefs) => {
      if(prefs.getBool('introScreen') != null && !prefs.getBool('introScreen')!){
        setState((){
          showIntroScreen = false;
          loader = false;
        })
      }
    }).then((value) => {
      setState((){
        loader = false;
      })
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      title: 'Introduction screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
      ),
      home: loader ? utility.loader() : showIntroScreen ? OnBoardingPage() : LoginPage(),
    );
  }
}



