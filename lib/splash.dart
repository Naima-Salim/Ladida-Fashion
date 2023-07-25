// import 'dart:async';  
// import 'package:flutter/material.dart';  
// import 'package:splashscreen/splashscreen.dart';  
  
// void main() { runApp(MyApp()); }  
  
// class MyApp extends StatelessWidget {  
//   @override  
//   Widget build(BuildContext context) {  
//     return MaterialApp(  
//       theme: ThemeData(  
//         primarySwatch: Colors.green,  
//       ),  
//       home: SplashScreenPage(),  
//       debugShowCheckedModeBanner: false,  
//     );  
//   }  
// }  
// class SplashScreenPage extends StatelessWidget {  
//   @override  
//   Widget build(BuildContext context) {  
//     return SplashScreen(  
//       seconds: 5,  
//       navigateAfterSeconds: new HomeScreen(),  
//       backgroundColor: Colors.yellow,  
//       title: new Text('Flutter Javatpoint',textScaleFactor: 2,),  
//       image: new Image.network(  
//           'https://static.javatpoint.com/tutorial/flutter/images/flutter-creating-android-platform-specific-code3.png'  
//       ),  
//       loadingText: Text("Loading"),  
//       photoSize: 150.0,  
//       loaderColor: Colors.red,  
//     );  
//   }  
// }  
// class HomeScreen extends StatelessWidget {  
//   @override  
//   Widget build(BuildContext context) {  
//     return Scaffold(  
//       appBar: AppBar(title:Text("Splash Screen Example")),  
//       body: Center(  
//           child:Text("Welcome to Home Page",  
//               style: TextStyle( color: Colors.black, fontSize: 30)  
//           )  
//       ),  
//     );  
//   }  
// }  

//  Container(
//                       // height: 20,
//                       // padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
//                       child: Positioned(
//                         left: 100,
//                         top: 530,
//                         child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),

//                             primary: Color((0xFFFFDBAD)),

//                             // side: BorderSide(color: Color(0xFFFFDBAD)), // Background color
//                           ),
//                           child: Text(
//                             'Create account',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 20,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w300,
//                             ),
//                           ),
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(builder: (context) => SignUp()),
//                             );
//                           },
//                         ),
//                       ),
//                     ),
//                     Container(
//                       // height: 20,
//                       // padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
//                       child: Positioned(
//                         left: 100,
//                         top: 600,
//                         child: OutlinedButton(
//                           style: OutlinedButton.styleFrom(
//                             padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),

//                             primary: Color((0xFFFFDBAD)),

//                             side: BorderSide(
//                                 color: Color(0xFFFFDBAD)), // Background color
//                           ),
//                           child: Text(
//                             'Get Started',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 20,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w300,
//                             ),
//                           ),
//                           onPressed: () {},
//                         ),
//                       ),
//                     ),