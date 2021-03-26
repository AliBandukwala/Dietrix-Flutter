import 'package:flutter/material.dart';

class Setup extends StatefulWidget {
  Setup({Key key}) : super(key: key);

  @override
  _SetupState createState() => _SetupState();
}

class _SetupState extends State<Setup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              // Title Text
              Text(
                "Account Setup",
                style: TextStyle(
                  fontFamily: 'Hind',
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              // Firstname TextField:
              Container(
                margin: EdgeInsets.only(bottom: 10, top: 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter First Name",
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
                        color: Theme.of(context).primaryColor,
                        width: 3,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),
              //Lastname TextField:
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Last Name",
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
                        color: Theme.of(context).primaryColor,
                        width: 3,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),
              //Bio Textfield:
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                    hintText: "Describe yourself as a dietitian",
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
                        color: Theme.of(context).primaryColor,
                        width: 3,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),
              //Email Textfield:
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "Enter Email address",
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
                        color: Theme.of(context).primaryColor,
                        width: 3,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),
              //Phone Textfield:
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    hintText: "Enter phone number",
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
                        color: Theme.of(context).primaryColor,
                        width: 3,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),
              //DatePicker for DOB to be added:
              /*
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.calendar_today),
                    hintText: "Enter Birthday",
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
                        color: Theme.of(context).primaryColor,
                        width: 3,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),*/
              //Finish Setup Button:
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Finish Setup"),
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
