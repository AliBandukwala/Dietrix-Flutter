import 'dart:ui';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  Signup({Key key}) : super(key: key);

  @override
  _SubscribeState createState() => _SubscribeState();
}

class _SubscribeState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // Main Column
        body: SizedBox.expand(
          child: Container(
            color: Theme.of(context).primaryColor,
            child: Column(
              children: [
                //Title Column in green 1/3 parts of screen
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        //Title Text and Logo img for Signup
                        Text(
                          "Welcome to Dietrix",
                          style: TextStyle(
                            fontFamily: 'Hind',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Image.asset(
                          'assets/images/logo.png',
                          width: 100,
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                ),
                // Create acc Column in white with 2/3 parts of screen and rounded top corners
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
                      child: Column(
                        children: [
                          // Create Account Text
                          Text(
                            "Create account",
                            style: TextStyle(
                              fontFamily: 'Hind',
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          //username textfield:
                          Container(
                            margin: EdgeInsets.only(bottom: 10, top: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.alternate_email),
                                hintText: "Enter Username",
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 3,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                    width: 3,
                                  ),
                                ),
                                contentPadding: EdgeInsets.all(15),
                              ),
                            ),
                          ),
                          //Password TextField:
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                hintText: "Enter Password",
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 3,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor,
                                    width: 3,
                                  ),
                                ),
                                contentPadding: EdgeInsets.all(15),
                              ),
                            ),
                          ),
                          //Signup Button:
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            alignment: Alignment.bottomCenter,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text("Signup"),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  primary: Theme.of(context).primaryColor,
                                  padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                                  textStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
