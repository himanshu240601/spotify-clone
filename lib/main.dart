import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotify_clone/navigations/tabbar.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.light
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white.withOpacity(0.1),
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: const TextStyle(
            fontSize: 12
          ),
          unselectedLabelStyle: const TextStyle(
                fontSize: 12
          ),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70
        )
      ),
      home: Tabbar(),
    );
  }
}