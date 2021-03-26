import 'package:flutter/material.dart';

class Subscribe extends StatelessWidget {
  const Subscribe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        RichText(
          text: TextSpan(
            text: "",
            children: [
              TextSpan(
                text: "",
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {},
              child: Text("SUBSCRIBE"),
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
        ),
      ],
    );
  }
}
