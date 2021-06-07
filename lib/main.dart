import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Animation/animation.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: LoginPage(),
));

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 350,
            child: Stack(
              children: [
                Positioned(
                  top: -40,
                  height: 350,
                  width: width,
                  child: FadeAnimation(1,Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/background.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),),
                ),
                Positioned(
                  height: 350,
                  width: width + 20,
                  child: FadeAnimation(1.5,Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/background-2.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  )),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeAnimation(1.6, Text(
                  'Login',
                  style: TextStyle(
                    color: Color.fromRGBO(49, 39, 79, 1),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ),
                SizedBox(height: 30,),
                FadeAnimation(1.7, Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(196, 135, 198, 0.4),
                        blurRadius: 20,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.grey[300]))),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Username',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.grey[300]))),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ),
                SizedBox(height: 20,),
                FadeAnimation(1.7,Center(
                    child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: Color.fromRGBO(196, 135, 198, 1)),
                ))),
                SizedBox(height: 30,),
                FadeAnimation(1.9,Container(
                  height: 50,
                  width: 150,
                  margin: EdgeInsets.symmetric(horizontal: 90),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromRGBO(49, 39, 79, 1),
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                ),
                SizedBox(
                  height: 20,
                ),
                FadeAnimation(2, Center(
                    child: Text(
                  'Create Account',
                  style: TextStyle(
                      color: Color.fromRGBO(49, 39, 79, 0.6),
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
