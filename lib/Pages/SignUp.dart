import 'package:flutter/material.dart';
import 'package:foodie/Pages/SignIn.dart';
import 'package:foodie/Services/DataStructure.dart';
import 'package:foodie/Services/Streams.dart';
import 'package:foodie/Styles/Style.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool agreed = false;
  Color pwconfirm = Colors.grey;

  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(currentBuildContext).size.height;
    double w = MediaQuery.of(currentBuildContext).size.width;
    return Center(
      child: SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: w > h ? (w / 2) : (w * 0.8),
                  child: Card(
                    shape: rounder(16.0),
                    elevation: 4,
                    child: Container(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            'Sign Up',
                            style: blackText(24.0),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Full Name',
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                            ),
                          ),
                          TextField(
                            obscureText: true,
                            controller: password,
                            decoration: InputDecoration(
                              labelText: 'Password',
                            ),
                          ),
                          TextField(
                            obscureText: true,
                            onChanged: (String text) {
                              setState(() {
                                if (password.text != text) {
                                  pwconfirm = Colors.red;
                                } else {
                                  pwconfirm = Colors.blue;
                                }
                              });
                            },
                            decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: pwconfirm)),
                              labelText: 'Confirm Password',
                              labelStyle: TextStyle(color: pwconfirm),
                            ),
                          ),
                          CheckboxListTile(
                              title: Text(
                                  'I Agree to the Terms and Conditions of The Foodie.lk'),
                              value: agreed,
                              onChanged: (bool val) {
                                setState(() {
                                  agreed = val;
                                });
                              }),
                          RaisedButton(
                              child: Text(
                                'Sign Up',
                                style: whiteText(16),
                              ),
                              color: Colors.blue,
                              shape: rounder(64.0),
                              onPressed: agreed ? () {} : null),
                          RaisedButton(
                            shape: rounder(64.0),
                              child: Text(
                                'Already have a account? SignIn',
                               
                              ),
                              onPressed: () {
                                 
                                   setView(SignIn());
                                 
                            
                              }),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
      ),
    );
  }
}
