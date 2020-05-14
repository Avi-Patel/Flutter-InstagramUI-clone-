import 'package:flutter/material.dart';

class Persnoalinfosett extends StatefulWidget {
  @override
  _PersnoalinfosettState createState() => _PersnoalinfosettState();
}

class _PersnoalinfosettState extends State<Persnoalinfosett> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: new Color(0xfff8faf8),
        title: new Text(
          "Personal Information",
          style: new TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            fontFamily: 'Roboto'
          ),
        ),
        elevation: 0.8,
        actions: <Widget>[
          new IconButton(
            icon: new Icon(
              Icons.done,
              color: Colors.blue,
              size: 28.0,
            ), 
            onPressed: ()=> Navigator.of(context).pop(),
          ),
        ],
      ),
      body: new Padding(
        padding: EdgeInsets.all(15.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(
              "Provide your personal infomation, even if the account is used for a business, a pet or something else.This won't be part of your public profile",
              style: new TextStyle(color:Colors.black38,),
            ),

            SizedBox(height: 20.0,),
            new Text(
              "Email address",
              style: new TextStyle(
                color:Colors.black38,
                fontWeight: FontWeight.bold,
              ),
            ),

            new SizedBox(
              height: 35.0,
              child:new TextField(
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
                decoration: InputDecoration(
                  hintText: "Your email",
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            new Text(
              "Phone number",
              style: new TextStyle(
                color:Colors.black38,
                fontWeight: FontWeight.bold,
              ),
            ),

            new SizedBox(
              height: 35.0,
              child:new TextField(
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
                decoration: InputDecoration(
                  hintText: "Your phone number",
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            new Text(
              "Gender",
              style: new TextStyle(
                color:Colors.black38,
                fontWeight: FontWeight.bold,
              ),
            ),

            new SizedBox(
              height: 35.0,
              child:new TextField(
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
                decoration: InputDecoration(
                  hintText: "Your gender",
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            new Text(
              "Date of birth",
              style: new TextStyle(
                color:Colors.black38,
                fontWeight: FontWeight.bold,
              ),
            ),

            new SizedBox(
              height: 35.0,
              child:new TextField(
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
                decoration: InputDecoration(
                  hintText: "Your DOB",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}