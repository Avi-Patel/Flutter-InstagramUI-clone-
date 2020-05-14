import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'instalist.dart';

class Instabody extends StatefulWidget {

  @override
  _InstabodyState createState() => _InstabodyState();
}

class _InstabodyState extends State<Instabody> {
  final topBar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    // centerTitle: true,
    elevation: 0.7,
    leading: new IconButton(
      icon: new Icon(OMIcons.cameraAlt),
      onPressed: (){},
    ),
    title: SizedBox(
      height: 35.0,
      
      child: Image.asset("assets/images/insta_logo.png"),
    ),
    actions: <Widget>[
      new IconButton(
        icon: new Icon(OMIcons.send),
        onPressed: (){},
      ),
    ],
  );

  Future<bool> _onbackpressed()
  {
    return showDialog(
      context: context,
      builder: (context)=> AlertDialog(
        title: new Text(
          "Do you really want to close the app?",
          style: new TextStyle(color:Colors.white,fontSize: 18.0),
        ),
        backgroundColor: Colors.black,
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0))),
        actions: <Widget>[
          new SizedBox(
            height: 30.0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: FlatButton(
              child: new Text(
                "No",
                style: new TextStyle(color:Colors.white,fontWeight: FontWeight.bold),
              ),
              onPressed:()=> Navigator.pop(context,false),
              ),
            ),
          ),
          new SizedBox(
            height: 30.0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: FlatButton(
              child: new Text(
                "Yes",
                style: new TextStyle(color:Colors.white,fontWeight: FontWeight.bold),
              ),
              onPressed:()=> Navigator.pop(context,true),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()=>_onbackpressed(),
      child: Scaffold(
        appBar: topBar,
        body:new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Flexible(
              child: Instalist(),
            ),
          ],
        ),
      ),
    );
  }
}