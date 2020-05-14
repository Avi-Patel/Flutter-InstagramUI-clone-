import 'package:flutter/material.dart';

class Switchtoprofessional extends StatefulWidget {
  @override
  _SwitchtoprofessionalState createState() => _SwitchtoprofessionalState();
}

class _SwitchtoprofessionalState extends State<Switchtoprofessional> {

  Widget _body()
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(height: 10.0,),
        new Text(
          "Which best describe you?",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25.0),
        ),

        SizedBox(height: 20.0,),
        new FlatButton(
          onPressed: (){},
          child: new Card(
            child: new Column(
              children: <Widget>[
                SizedBox(height: 20.0,),
                new Container(
                  height: 60.0,
                  width: 60.0,
                  child: new Icon(Icons.person_add),
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    border: new Border.all(color: Colors.black54),
                  ),
                ),
                SizedBox(height: 20.0,),
                new Text(
                  "Creator",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25.0),
                ),
                SizedBox(height: 10.0,),
                Padding(
                  padding: const EdgeInsets.only(left:20.0, right:20.0),
                  child: new Text(
                    "Best for public figures, content producers, artists and influencers",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),

                SizedBox(height: 20.0,),
                new Text(
                  "Next",
                  style: new TextStyle(color:Colors.blue, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0,),
              ],
            ),
          ),
        ),
        new FlatButton(
          onPressed: (){},
          child: new Card(
            child: new Column(
              children: <Widget>[
                SizedBox(height: 20.0,),
                new Container(
                  height: 60.0,
                  width: 60.0,
                  child: new Icon(Icons.business_center),
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    border: new Border.all(color: Colors.black54),
                  ),
                ),
                SizedBox(height: 20.0,),
                new Text(
                  "Business",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25.0),
                ),
                SizedBox(height: 10.0,),
                Padding(
                  padding: const EdgeInsets.only(left:20.0, right:20.0),
                  child: new Text(
                    "Best for retailers, local businesses, brands, organizations and service providers",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),

                SizedBox(height: 20.0,),
                new Text(
                  "Next",
                  style: new TextStyle(color:Colors.blue, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0,),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: new Color(0xfff8faf8),
        elevation: 0.0,
        leading: new IconButton(
          icon: Icon(Icons.close, size: 30.0,), 
          onPressed:()=> Navigator.of(context).pop(),
        ),
      ),
      body: _body(),
    );
  }
}