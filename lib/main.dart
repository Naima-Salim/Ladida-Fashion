import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ladida_fashion/login.dart';
import 'package:ladida_fashion/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.network(
        'https://images.pexels.com/photos/2112651/pexels-photo-2112651.jpeg?auto=compress&cs=tinysrgb&w=600',
        fit: BoxFit.fill,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
         body: Container(
        padding: const EdgeInsets.all(0),
        width: double.maxFinite,
        height: double.maxFinite,
        child: ListView(children: <Widget>[
           Container(
            padding: const EdgeInsets.all(0),
            margin: EdgeInsets.all(6.0),
            child:Image.network("https://image.similarpng.com/very-thumbnail/2021/07/Beautiful-woman-illustration-on-transparent-background-PNG.png"), 
        ),


        Container(
          margin: EdgeInsets.all(20),
              width: double.infinity, // Make the button take full width
                
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                            
                            primary: Color((0xFFFFDBAD)),

                            // side: BorderSide(color: Color(0xFFFFDBAD)), // Background color
                          ),
                          child: Text(
                            'Create account',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignUp()),
                            );
                          },
                        ),
                      
                    ),
        
        ]
        ),
         ),
      
     ),
    );
  }
}