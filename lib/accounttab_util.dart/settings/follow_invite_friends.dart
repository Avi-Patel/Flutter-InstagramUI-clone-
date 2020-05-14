import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class FollowInviteFriends extends StatefulWidget {
  @override
  _FollowInviteFriendsState createState() => _FollowInviteFriendsState();
}

class _FollowInviteFriendsState extends State<FollowInviteFriends> {

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
            child:new Row(
              children: <Widget>[
                new Icon(OMIcons.email),
                SizedBox(width: 10.0,),
                new Text(
                  "Invite friends by email",
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
                new Icon(OMIcons.sms),
                SizedBox(width: 10.0,),
                new Text(
                  "Invite friends via SMS",
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
                new Icon(OMIcons.share),
                SizedBox(width: 10.0,),
                new Text(
                  "Invite friends via...",
                  style: new TextStyle(fontWeight: FontWeight.w500,fontSize: 16.0),
                )
              ],
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
          "Follow and invite friends",
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