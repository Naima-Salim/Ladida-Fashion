import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ladida_fashion/home.dart';
import 'package:ladida_fashion/signup.dart';

void main() => runApp(const Login());

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autoValidate = AutovalidateMode.disabled;
  String? _name;
  String? _email;

  void _validateInputs() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print('Username: $_name');
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
        'Login',
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
            border: OutlineInputBorder(), labelText: 'Email address'),
        keyboardType: TextInputType.emailAddress,
        validator: validateEmail,
        onSaved: (String? val) {
          _email = val;
        },
      ),

      Padding(padding: const EdgeInsets.all(20.0)),
      const SizedBox(
        height: 5.0,
      ),
       TextButton(
                onPressed: () {
                  //forgot password screen
                },
                child: const Text(
                  'OR',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  ),
                )),
                 Container(
                height: 90,
                width: 500,
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: OutlinedButton.icon(
                  // child: const Text('Login'),
                  onPressed: () {},
                  icon: Icon(
                    Icons.facebook_rounded,
                    size: 24.0,
                  ),
                  label: Text('Sign Up with Facebook'),
                )),
                 Container(
                height: 90,
                width: 500,
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: OutlinedButton.icon(
                  // child: const Text('Login'),
                  onPressed: () {},
                  icon: Icon(
                    Icons.gamepad_rounded,
                    size: 24.0,
                  ),
                  label: Text('Sign Up with Google'),
                )),
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
                            'Login',
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
                const Text('Dont have an account?'),
                TextButton(
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 13,
                      ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUp()),
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

