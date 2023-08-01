import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ladida_fashion/home.dart';
import 'package:ladida_fashion/login.dart';
import 'package:ladida_fashion/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
    String? _name;
  String? _mobile;
  String? _email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: const EdgeInsets.all(20.0)),
              SizedBox(
                height: 0.04,
              ),
              Text(
                'Sign Up',
                style: TextStyle(
                    fontSize: 30.0, color: Color.fromARGB(255, 181, 123, 42)),
              ),
              Padding(padding: const EdgeInsets.all(20.0)),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    labelText: 'Enter your name'),
                keyboardType: TextInputType.name,
                onSaved: (String? val) {
                  _nameController = TextEditingController();
                  ;
                },
                controller: _nameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              Padding(padding: const EdgeInsets.all(20.0)),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    labelText: 'Enter your email'),
                keyboardType: TextInputType.emailAddress,
                onSaved: (String? val) {
                  _emailController = TextEditingController();
                  ;
                },
                controller: _emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  } else if (!isValidEmail(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
               Padding(padding: const EdgeInsets.all(20.0)),

              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    labelText: 'Mobile number'),
                keyboardType: TextInputType.phone,
                controller: _phoneController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Phone number is required';
                  }
                  return null;
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
                    if (_formKey.currentState!.validate()) {
                      // Form is valid, print details and navigate to the next page
                      printDetails();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    }
                  },
                ),
              ),
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
                      MaterialPageRoute(builder: (context) =>  Login()),
                    );
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            ],
          ),
        ),
      ),
    );
  }

  void printDetails() {
    final name = _nameController.text;
    final email = _emailController.text;
    final phone = _phoneController.text.characters;
    print('Phone: $phone');
    print('Name: $name');
    print('Email: $email');
  }

  bool isValidEmail(String email) {
    return email.contains('@');
    // You can implement a proper email validation logic here
  }

  bool isValidPhoneNumber(Characters phone) {
    return phone.contains('1234');
  }
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


