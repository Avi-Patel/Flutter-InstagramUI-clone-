import 'package:flutter/material.dart';
import 'instahome.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        print("1");
        return true;
      },
      child: new MaterialApp(
        title: "Instagram",
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          primaryColor: Colors.black,
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme: TextTheme(
            title:TextStyle(
              color:Colors.black,
              fontFamily: "Aveny"
            ),
          ),
          textTheme: TextTheme(
            title:TextStyle(
              color:Colors.black,
            ),
          ),
        ),
        home: new Instahome(),
      ),
    );
  }
}
