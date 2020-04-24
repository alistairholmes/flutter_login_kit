import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginkit/components/rounded_btn/rounded_btn.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff251F34),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 175,
            height: 175,
            child: SvgPicture.asset('images/login.svg')
          ),
          Text('Login'),
          Text('Please sign in to continue.'),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'E-mail',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Color(0xfff3B324E),
                        filled: true,
                    prefixIcon: SvgPicture.asset('images/icon_email.svg'),
                ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Password',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Color(0xfff3B324E),
                    filled: true,
                    prefixIcon: SvgPicture.asset('images/icon_lock.svg'),
                  ),
                ),
              ],
            ),
          ),
          RoundedButton(
            btnText: 'LOGIN',
            color: Color(0xff14DAE2),
            onPressed: (){
              // Add login code
            },
          ),
          Text('Forgot Password?',
          style: TextStyle(
            color: Color(0xff14DAE2)
          ),
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Dont have an account?'),
              Text('Sign up',
                style: TextStyle(
                    color: Color(0xff14DAE2),)
              )
            ],
          )
        ],
      ),
    );
  }
}
