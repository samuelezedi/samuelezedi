

import 'package:flutter/material.dart';
import 'package:samuelezedi/screen/index.dart';
import 'package:samuelezedi/theme.dart';

var deviceName;
var deviceId; //UUID for Android
var deviceModelID;
var deviceBoard;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Samuel Ezedi',
      theme: AppTheme().lightTheme,
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  bool ready = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1)).then((value) {
      setState(() {
        ready = true;
      });
      Navigator.push(context, MaterialPageRoute(builder: (context) => IndexPage()));
    });
  }
 
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        child: Center(        
          child: CircularProgressIndicator()
        ),
      ),
    );
  }
}
