import 'package:flutter/material.dart';

class Clients extends StatefulWidget {
  Clients({Key key}) : super(key: key);

  @override
  _ClientsState createState() => _ClientsState();
}

class _ClientsState extends State<Clients> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        // Clients AppBar:
        child: AppBar(
          title: Text("My Clients"),
          centerTitle: true,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
        //ListView for displaying clients:
        child: ListView.builder(itemBuilder: (context, index) {
          // Cards with each client
          return Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
              Radius.circular(15),
            )),
            child: ListTile(
              onTap: () {},
              title: Text(
                "Title", //Name of the client
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              leading: CircleAvatar(
                // irl backgroungimage and foregroundimage:
                backgroundColor: Colors.transparent,
                child: Image.asset("assets/images/logo.png"),
              ),
            ),
          );
        }),
      ),
    );
  }
}
