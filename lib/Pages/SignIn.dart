import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodie/Pages/SignUp.dart';
import 'package:foodie/Services/DataStructure.dart';
import 'package:foodie/Services/Streams.dart';
import 'package:foodie/Styles/Style.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
     double h = MediaQuery.of(currentBuildContext).size.height;
  double w = MediaQuery.of(currentBuildContext).size.width;
  return Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        
        Container(
          height: MediaQuery.of(currentBuildContext).size.height/2,
          width: w>h ? (w/2):(w*0.8), 
          child: Card(
            shape: rounder(16.0),
            elevation: 4,
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  
                  Text('Sign In',style: blackText(24.0),),
                  RaisedButton(
                    color: Colors.blue,
                    shape: rounder(64),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.google, color: Colors.white,),
                        SizedBox(width: 4,),
                        Text('SignIn With Google', style: TextStyle(color: Colors.white),),
                      ],
                    ),
                    onPressed: (){}),
                  Text('Or'),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                   TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                  ),
                  RaisedButton(
                    child: Text('Sign In', style: whiteText(16),),
                    color: Colors.blue,
                    shape: rounder(64.0),
                    onPressed: (){

                  }),

                  RaisedButton(
                    shape: rounder(64),
                    child: Text('Don\'t have an Account? Register', style: blackText(16),),  
                    onPressed: (){
                      
                        setView(SignUp());
                      
                      
                  })
                ],
              ),
            ),
          ),
        ),
        
      ],
    ),
  );
  }
}
