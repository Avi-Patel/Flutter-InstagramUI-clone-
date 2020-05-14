import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {

  Widget _body()
  {
    return new Padding(
      padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20.0,),
          new GestureDetector(
            onTap: (){},
            child:new Text(
              "Push notifications",
              style: new TextStyle(fontWeight: FontWeight.w500,fontSize: 16.0),
            )
          ),
          SizedBox(height: 20.0,),
          new GestureDetector(
            onTap: (){},            
            child:new Text(
              "Email and SMS notifications",
              style: new TextStyle(fontWeight: FontWeight.w500,fontSize: 16.0),
            )
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: new Color(0xfff8faf8),
        elevation: 1,
        title: new Text(
          "Notifications",
          style: new TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            fontFamily: 'Roboto'
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            _body(),
          ],
        ),
      )
    );
  }
}