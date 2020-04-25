import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginkit/components/rounded_btn/rounded_btn.dart';
import 'package:loginkit/ui/login/login.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
          leading: _goBackButton(context),
        backgroundColor: Color(0xff251F34),
      ),
      backgroundColor: Color(0xff251F34),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 8),
            child: Text('Create Account',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 25
              ),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text('Please fill the input below.',
              style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w400,
                  fontSize: 14
              ),),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                  obscureText: false,
                  cursorColor: Colors.white,
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
                btnText: 'SIGN UP',
                color: Color(0xff14DAE2),
                onPressed: (){
                  // Add login code
                },
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account?',
                style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w400
                ),),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Login()));
                },
                child: Text('Sign in',
                    style: TextStyle(
                      color: Color(0xff14DAE2),)
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

Widget _goBackButton(BuildContext context) {
  return IconButton(
      icon: Icon(Icons.arrow_back, color: Colors.grey[350]),
      onPressed: () {
        Navigator.of(context).pop(true);
      });
}
