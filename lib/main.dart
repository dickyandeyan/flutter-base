import 'package:baseapp/font_style.dart';
import 'package:flutter/material.dart';
import 'package:baseapp/custom_color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold (
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.menu), 
            color: Colors.white,
            tooltip: 'Navigation Menu',),
          toolbarHeight: 50.0,
          title: Text("Welcome"),
          backgroundColor: elegantBlue,
        ),
        body: SafeArea(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image (
                    image: AssetImage('assets/images/Flutter.png'),
                    height: 100,
                    width: 300,),
                    Text("Welcome To Flutter", style: mainHeader,),
                    Text("This is your first Flutter Application", style: subHeader,)
                  ],
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
