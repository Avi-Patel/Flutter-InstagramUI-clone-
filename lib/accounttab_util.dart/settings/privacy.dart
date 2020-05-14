import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class Privacy extends StatefulWidget {
  @override
  _PrivacyState createState() => _PrivacyState();
}

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
            "Interactions",
            style: new TextStyle(fontWeight: FontWeight.w700,fontSize: 14.0),
          )
        ),
        SizedBox(height: 20.0,),
        new GestureDetector(
          onTap: (){},
          child:new Row(
            children: <Widget>[
              SizedBox(width: 5.0,),
              new Icon(OMIcons.comment),
              SizedBox(width: 10.0,),
              new Text(
                "Commets",
                style: new TextStyle(fontWeight: FontWeight.w500,fontSize: 16.0),
              )
            ],
          )
        ),
        SizedBox(height: 20.0,),
        new GestureDetector(
          onTap: (){},
          child:new Row(
            children: <Widget>[
              SizedBox(width: 5.0,),
              new Icon(OMIcons.tagFaces),
              SizedBox(width: 10.0,),
              new Text(
                "Tags",
                style: new TextStyle(fontWeight: FontWeight.w500,fontSize: 16.0),
              )
            ],
          )
        ),
        SizedBox(height: 20.0,),
        new GestureDetector(
          onTap: (){},
          child:new Row(
            children: <Widget>[
              SizedBox(width: 5.0,),
              new Icon(OMIcons.addCircleOutline),
              SizedBox(width: 10.0,),
              new Text(
                "Story",
                style: new TextStyle(fontWeight: FontWeight.w500,fontSize: 16.0),
              )
            ],
          )
        ),
        SizedBox(height: 20.0,),
        new GestureDetector(
          onTap: (){},
          child:new Row(
            children: <Widget>[
              SizedBox(width: 5.0,),
              new Icon(OMIcons.howToReg),
              SizedBox(width: 10.0,),
              new Text(
                "Activity stutas",
                style: new TextStyle(fontWeight: FontWeight.w500,fontSize: 16.0),
              )
            ],
          )
        ),
        SizedBox(height: 10.0,),
        Divider(),
        new GestureDetector(
          onTap: (){},
          child:new Text(
            "Connections",
            style: new TextStyle(fontWeight: FontWeight.w700,fontSize: 14.0),
          )
        ),
        SizedBox(height: 20.0,),
        new GestureDetector(
          onTap: (){},
          child:new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Row(
                children: <Widget>[
                  SizedBox(width: 5.0,),
                  new Icon(OMIcons.https),
                  SizedBox(width: 10.0,),
                  new Text(
                    "Account privacy",
                    style: new TextStyle(fontWeight: FontWeight.w500,fontSize: 16.0),
                  )
                ],
              ),  

              new Padding(
                padding: EdgeInsets.only(right:10.0),
                child: new Text(
                  "Private",
                  style: new TextStyle(
                    color:Colors.grey,
                    fontSize: 12.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.0,),
        new GestureDetector(
          onTap: (){},
          child:new Row(
            children: <Widget>[
              SizedBox(width: 5.0,),
              new Icon(OMIcons.personAddDisabled),
              SizedBox(width: 10.0,),
              new Text(
                "Restricted accounts",
                style: new TextStyle(fontWeight: FontWeight.w500,fontSize: 16.0),
              )
            ],
          )
        ),
        SizedBox(height: 20.0,),
        new GestureDetector(
          onTap: (){},
          child:new Row(
            children: <Widget>[
              SizedBox(width: 5.0,),
              new Icon(OMIcons.cancel),
              SizedBox(width: 10.0,),
              new Text(
                "Blocked accounts",
                style: new TextStyle(fontWeight: FontWeight.w500,fontSize: 16.0),
              )
            ],
          )
        ),
        SizedBox(height: 20.0,),
        new GestureDetector(
          onTap: (){},
          child:new Row(
            children: <Widget>[
              SizedBox(width: 5.0,),
              new Icon(OMIcons.notificationsOff),
              SizedBox(width: 10.0,),
              new Text(
                "Muted accounts",
                style: new TextStyle(fontWeight: FontWeight.w500,fontSize: 16.0),
              )
            ],
          )
        ),
        SizedBox(height: 20.0,),
        new GestureDetector(
          onTap: (){},
          child:new Row(
            children: <Widget>[
              SizedBox(width: 5.0,),
              new Icon(OMIcons.formatListBulleted),
              SizedBox(width: 10.0,),
              new Text(
                "Close friends",
                style: new TextStyle(fontWeight: FontWeight.w500,fontSize: 16.0),
              )
            ],
          )
        ),
        SizedBox(height: 20.0,),
        new GestureDetector(
          onTap: (){},
          child:new Row(
            children: <Widget>[
              SizedBox(width: 5.0,),
              new Icon(OMIcons.group),
              SizedBox(width: 10.0,),
              new Text(
                "Account you follow",
                style: new TextStyle(fontWeight: FontWeight.w500,fontSize: 16.0),
              )
            ],
          )
        ),
      ],
    ),
  );
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: new Color(0xfff8faf8),
        elevation: 1,
        title: new Text(
          "Privacy",
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