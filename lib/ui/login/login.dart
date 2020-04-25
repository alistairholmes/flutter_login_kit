import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginkit/components/rounded_btn/rounded_btn.dart';
import 'package:loginkit/ui/create_account/create_account.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff251F34),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                width: 175,
                height: 175,
                child: SvgPicture.asset('images/login.svg')
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 8),
              child: Text('Login',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 20
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text('Please sign in to continue.',
                  style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w400,
                  fontSize: 13
              ),
      ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'E-mail',
                      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                        cursorColor: Colors.white,
                        obscureText: false,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            fillColor: Color(0xfff3B324E),
                            filled: true,
                        prefixIcon: Image.asset('images/icon_email.png'),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff14DAE2), width: 2.0),
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          ),
                    ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Password',
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    obscureText: true,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Color(0xfff3B324E),
                      filled: true,
                      prefixIcon: Image.asset('images/icon_lock.png'),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff14DAE2), width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: RoundedButton(
                  btnText: 'LOGIN',
                  color: Color(0xff14DAE2),
                  onPressed: (){
                    // Add login code
                  },
                ),
              ),
            ),
            Center(
              child: Text('Forgot Password?',
              style: TextStyle(
                color: Color(0xff14DAE2)
              ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dont have an account?',
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w400
                  ),),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreateAccount()));
                  },
                  child: Text('Sign up',
                    style: TextStyle(
                        color: Color(0xff14DAE2),)
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
