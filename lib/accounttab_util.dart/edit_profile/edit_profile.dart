import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/accounttab_util.dart/edit_profile/personal_info_sett.dart';
import 'package:flutter_instagram_ui/accounttab_util.dart/edit_profile/switch_to_professional.dart';

class Editprofile extends StatefulWidget {
  @override
  _EditprofileState createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {

  Widget _body()
  {
    return Column(
      children: <Widget>[
        new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new SizedBox(height:8.0),
            Center(
              child: new CircleAvatar(
                radius: 45.0,
                backgroundImage: new AssetImage("assets/images/profile.jpg"),
                // backgroundColor: Colors.transparent,s
              ),
            ),
            new FlatButton(
              onPressed: (){}, 
              child: new Text(
                "Change profile photo",
                style: new TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(left:15.0, top:10.0,right:15.0),
          child: new Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                "Name",
                style: new TextStyle(
                  color:Colors.black38,
                  fontSize:15.0,
                ),
              ),
              new TextField(
                decoration: InputDecoration(
                  hintText: "Your name",
                  contentPadding: EdgeInsets.all(0.0),
                  fillColor: Colors.grey,
                ),
              ),
              SizedBox(height: 12.0,),
              new Text(
                "Username",
                style: new TextStyle(
                  color:Colors.black38,
                  fontSize:15.0,
                ),
              ),
              new TextField(
                decoration: InputDecoration(
                  hintText: "Your username",
                ),
              ),
              SizedBox(height: 10.0,),
              new Text(
                "Website",
                style: new TextStyle(
                  color:Colors.black38,
                  fontSize:15.0,
                ),
              ),
              new TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: "Your website",
                ),
              ),
              SizedBox(height: 10.0,),
              new Text(
                "Bio",
                style: new TextStyle(
                  color:Colors.black38,
                  fontSize:15.0,
                ),
              ),
              new TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: "Your Bio",
                ),
              ),

              new SizedBox(height: 20.0,),
              new Divider(color: Colors.grey[400],),
              new SizedBox(
                height: 30.0,
                child: new FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Switchtoprofessional())),
                  child: new Text(
                    "Switch to Professional account",
                    style: new TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              new Divider(color: Colors.grey[400],),
              // new SizedBox(height: 20.0,),
              new Divider(color: Colors.grey[400],),
              new SizedBox(
                height: 30.0,
                child: new FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Persnoalinfosett())),
                  child: new Text(
                    "personal information settings",
                    style: new TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.8,
        backgroundColor: new Color(0xfff8faf8),
        title:new Text(
          "Edit Profile",
          style: new TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            fontFamily: 'Roboto'
          ),
        ),
        leading: new IconButton(
          icon: new Icon(Icons.close), 
          onPressed: ()=> Navigator.of(context).pop(),
        ),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.done,
              color: Colors.blue,
              size: 28.0,
            ), 
            onPressed: ()=> Navigator.of(context).pop(),
          ),
        ],
      ),
      body: new SingleChildScrollView(
        child:_body(),
      ),
    );
  }
}