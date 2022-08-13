//sign in screen

// ignore_for_file: prefer_const_constructors, sort_child_properties_last, deprecated_member_use

import 'package:active_burn_app/views/menu.dart';
import 'package:flutter/material.dart';

import 'Sign_up.dart';
import 'auth_methods.dart';

// ignore: camel_case_types
class signin extends StatelessWidget {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 220),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Image.asset(
                  "assets/upper circle.png",
                ),
              ),
            ),
            SizedBox(
                child: Text(
              'WELCOME BACK TO ACTIVEBURN',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.012,
            ),
            SizedBox(
                child: Text(
              'Let us help you accomplish your tasks',
              style: TextStyle(fontSize: 17),
            )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.22,
              width: MediaQuery.of(context).size.height * 0.22,
              child: Image.asset('assets/signIn.png'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: MediaQuery.of(context).size.height * 0.45,
                    child: Column(
                      children: [
                        // ignore: prefer_const_literals_to_create_immutables
                        Material(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.09,
                            width: MediaQuery.of(context).size.height * 0.45,
                            child: TextFormField(
                              controller: _email,
                              decoration: InputDecoration(
                                hintText: 'Username or Email',
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 25),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                    borderSide: BorderSide(
                                        color: Colors.black12, width: 2.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black12, width: 2.0)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: MediaQuery.of(context).size.height * 0.45,
                    child: Column(
                      children: [
                        Material(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.09,
                            width: MediaQuery.of(context).size.height * 0.45,
                            child: TextFormField(
                              controller: _password,
                              decoration: InputDecoration(
                                hintText: 'Enter Password',
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 25),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                    borderSide: BorderSide(
                                        color: Colors.black12, width: 2.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black12, width: 2.0)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 13),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.height * 0.42,
                    child: ElevatedButton(
                        onPressed: () => {
                              logIn(_email.text, _password.text).then((user) {
                                if (user != null) {
                                  print("Fuck you bruh");
                                  Navigator.push(context, MaterialPageRoute(builder: (_) => MenuScreen()));
                                  
                                } else {
                                  print("Login Failed");
                                }
                              })
                            },
                        child: Text(
                          'Sign In',
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).buttonColor,
                          textStyle: TextStyle(
                            fontSize: 15,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 45),
                    child: Row(
                      children: [
                        Text(
                          "Don't Have an Account?",
                          style: TextStyle(fontSize: 16),
                        ),
                        TextButton(
                          onPressed: () async {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => signup()));
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
