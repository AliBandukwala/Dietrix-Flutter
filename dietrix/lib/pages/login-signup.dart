import 'package:flutter/material.dart';

class LoginSignup extends StatelessWidget {
  //const LoginSignup({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //Main Column:
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 3,
              //Column for title img and text:
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    height: 150.0,
                    width: 150.0,
                  ),
                  Text(
                    "Dietrix",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.green,
                      fontFamily: 'Hind',
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              // Rounded box with login/signup buttons:
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Login Button:
                    TextButton(
                      onPressed: () {},
                      child: Text("Login"),
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.green,
                          padding: EdgeInsets.all(15),
                          textStyle: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600)),
                    ),
                    //Signup Button:
                    TextButton(
                      onPressed: () {},
                      child: Text("Signup"),
                      style: TextButton.styleFrom(
                        primary: Colors.green,
                        backgroundColor: Colors.white,
                        padding: EdgeInsets.all(15),
                        textStyle: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
