import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ladida_fashion/home.dart';
import 'package:ladida_fashion/login.dart';

void main() => runApp(const SignUp());

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autoValidate = AutovalidateMode.disabled;
  String? _name;
  String? _mobile;
  String? _email;

  void _validateInputs() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print('Username: $_name');
      print('Mobile: $_mobile');
      print('Email: $_email');
    } else {
      setState(() {
        _autoValidate = AutovalidateMode.always;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color.fromARGB(255, 221, 204, 142), 
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(30.0),
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              autovalidateMode: _autoValidate,
              child: formUI(),
            ),
          ),
        ),
      ),
    );
  }

  Widget formUI() {
    return Column(children: <Widget>[
      SizedBox(
        height: 0.04,
      ),
      Text(
        'Sign Up',
        style: TextStyle(fontSize: 30.0, color: Color.fromARGB(255, 181, 123, 42)),
      ),
      Padding(padding: const EdgeInsets.all(20.0)),

      TextFormField(
        decoration: const InputDecoration(
            // padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            labelText: 'Name'),
        keyboardType: TextInputType.text,
        validator: validateName,
        onSaved: (String? val) {
          _name = val;
        },
      ),
      
      Padding(padding: const EdgeInsets.all(20.0)),
      TextFormField(
        decoration: const InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            labelText: 'Mobile number'),
        keyboardType: TextInputType.phone,
        validator: validateMobile,
        onSaved: (String? val) {
          _mobile = val;
        },
      ),
      Padding(padding: const EdgeInsets.all(20.0)),
      TextFormField(
        decoration: const InputDecoration(
            border: OutlineInputBorder(), labelText: 'Email address'),
        keyboardType: TextInputType.emailAddress,
        validator: validateEmail,
        onSaved: (String? val) {
          _email = val;
        },
      ),

      Padding(padding: const EdgeInsets.all(20.0)),
      const SizedBox(
        height: 10.0,
      ),
             Container(
                  width: 500,
                  height: 90,
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(  
                            primary: Color((0xFFFFDBAD)),

                            // side: BorderSide(color: Color(0xFFFFDBAD)), // Background color
                          ),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        onPressed: () {
                            _validateInputs();
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>const MyApp()),);
          
        },
                        ),),
                        Row(
              children: <Widget>[
                const Text('Already have an account?'),
                TextButton(
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 13,
                      ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailsForm()),
                    );
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
    ]);
  }

  String? validateName(String? value) {
    if (value!.isEmpty) {
      return 'Please enter your name';
    }
    if (value.length < 8) {
      return 'must be longer than 8 characters';
    } else {
      return null;
    }
  }

  String? validateMobile(String? value) {
    if (value!.isEmpty) {
      return 'Please enter a valid phone number';
    }
    if (value.length != 10) {
      return 'Mobile Number must be of 10 digit';
    } else {
      return null;
    }
  }

  String? validateEmail(String? value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    if (value!.isEmpty) {
      return 'Please enter your email';
    }
    if (!regex.hasMatch(value)) {
      return 'Enter Valid Email';
    } else {
      return null;
    }
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({super.key, required this.email});

//   final String email;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Home Page'),
//         ),
//         body: Column(
//           children: [
//             Text(email),
//             Center(
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: const Text("Go back!"),
//               ),
//             ),
//           ],
//         ));
//   }
// }