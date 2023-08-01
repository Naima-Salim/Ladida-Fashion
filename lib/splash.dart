// Container(
//               width: double.infinity, // Make the button take full width
                
//                         child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
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
                      
//                     ),
//                     Container(
//                       // margin: EdgeInsets.all(100.0),
                      
//                       child: Positioned(
//                         bottom: 100,
//                         child: OutlinedButton(
//                           style: OutlinedButton.styleFrom(
//                             padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
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
//                            onPressed: () {
//                             Navigator.push(
//                               // FFCD82
//                               context,
//                               MaterialPageRoute(builder: (context) => Login()),
//                             );
//                           },
//                         ),
//                       ),
//                     ),     



    // TextFormField(
                  
    //     decoration: const InputDecoration(
    //         border: OutlineInputBorder(),
    //         contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
    //         labelText: 'Mobile number'),
    //     keyboardType: TextInputType.phone,
        
    //     onSaved: (String? val) {
    //        _emailController = TextEditingController();;
    //     },

    //            controller: _emailController,
    //             validator: (value) {
    //               if (value!.isEmpty) {
    //                 return 'Please enter your email';
    //               } else if (!isValidEmail(value)) {
    //                 return 'Please enter a valid email address';
    //               }
    //               return null;
    //             },
                
    //           ),