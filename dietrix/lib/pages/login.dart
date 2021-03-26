import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  //Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(15, 100, 15, 15),
        child: Align(
          alignment: Alignment.center,
          //Main Column:
          child: Column(
            children: [
              //Container with title img and text:
              Container(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 100,
                  height: 100,
                ),
                margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
              ),
              Text(
                "Login to Dietrix",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Hind',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.green,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
                //Username TextField:
                child: TextField(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'Hind',
                  ),
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 3,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 3,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
                //Password TextField:
                child: TextField(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'Hind',
                  ),
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 3,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 3,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                alignment: Alignment.bottomCenter,
                //Login Button
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Login"),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      primary: Theme.of(context).primaryColor,
                      padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                      textStyle:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
