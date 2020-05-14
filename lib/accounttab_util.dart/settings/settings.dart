import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/accounttab_util.dart/settings/notifications.dart';
import 'package:flutter_instagram_ui/accounttab_util.dart/settings/privacy.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'follow_invite_friends.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  TextEditingController searchCtrl=new TextEditingController();
  String searchstr="";

  @override
  void initState() {
    super.initState();
    searchCtrl.addListener(() {
      if (searchCtrl.text.isEmpty) {
        setState(() {          
          searchstr = "";
        });
      } else {
        setState(() {
          searchstr = searchCtrl.text;
        });
      }
    });
  }

  @override
  void dispose() {
    searchCtrl?.dispose();
    super.dispose();
  }

  Widget _body()
  {
    return new Padding(
      padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new TextField(
            controller: searchCtrl,
            textAlign: TextAlign.justify,
            decoration: new InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "Search",
            ),
          ),
          SizedBox(height: 20.0,),
          new GestureDetector(
            onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> new FollowInviteFriends())),
            child:new Row(
              children: <Widget>[
                new Icon(OMIcons.personAdd),
                SizedBox(width: 10.0,),
                new Text(
                  "Follow and invite friends",
                  style: new TextStyle(fontWeight: FontWeight.w500,fontSize: 17.0),
                )
              ],
            )
          ),
          SizedBox(height: 20.0,),
          new GestureDetector(
            onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> new Notifications())),
            child:new Row(
              children: <Widget>[
                new Icon(OMIcons.notifications),
                SizedBox(width: 10.0,),
                new Text(
                  "Notifications",
                  style: new TextStyle(fontWeight: FontWeight.w500,fontSize: 17.0),
                )
              ],
            )
          ),
          SizedBox(height: 20.0,),
          new GestureDetector(
            onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> new Privacy())),
            child:new Row(
              children: <Widget>[
                new Icon(OMIcons.https),
                SizedBox(width: 10.0,),
                new Text(
                  "Privacy",
                  style: new TextStyle(fontWeight: FontWeight.w500,fontSize: 17.0),
                )
              ],
            )
          ),
          SizedBox(height: 20.0,),
          new GestureDetector(
            onTap: (){},
            child:new Row(
              children: <Widget>[
                new Icon(OMIcons.verifiedUser),
                SizedBox(width: 10.0,),
                new Text(
                  "Security",
                  style: new TextStyle(fontWeight: FontWeight.w500,fontSize: 17.0),
                )
              ],
            )
          ),
          SizedBox(height: 20.0,),
          new GestureDetector(
            onTap: (){},
            child:new Row(
              children: <Widget>[
                new Icon(OMIcons.speaker),
                SizedBox(width: 10.0,),
                new Text(
                  "Ads",
                  style: new TextStyle(fontWeight: FontWeight.w500,fontSize: 17.0),
                )
              ],
            )
          ),
          SizedBox(height: 20.0,),
          new GestureDetector(
            onTap: (){},
            child:new Row(
              children: <Widget>[
                new Icon(OMIcons.accountBox),
                SizedBox(width: 10.0,),
                new Text(
                  "Account",
                  style: new TextStyle(fontWeight: FontWeight.w500,fontSize: 17.0),
                )
              ],
            )
          ),
          SizedBox(height: 20.0,),
          new GestureDetector(
            onTap: (){},
            child:new Row(
              children: <Widget>[
                new Icon(OMIcons.helpOutline),
                SizedBox(width: 10.0,),
                new Text(
                  "Help",
                  style: new TextStyle(fontWeight: FontWeight.w500,fontSize: 17.0),
                )
              ],
            )
          ),
          SizedBox(height: 20.0,),
          new GestureDetector(
            onTap: (){},
            child:new Row(
              children: <Widget>[
                new Icon(OMIcons.info),
                SizedBox(width: 10.0,),
                new Text(
                  "About",
                  style: new TextStyle(fontWeight: FontWeight.w500,fontSize: 17.0),
                )
              ],
            )
          ),
          SizedBox(height: 25.0,),
          new GestureDetector(
            onTap: (){},
           child: Padding(
             padding: const EdgeInsets.only(left:5.0),
             child: new Text(
               "Logins",
               textAlign: TextAlign.start,
               style: new TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 17.0
               ),
             ),
           ),
          ),
          SizedBox(height: 25.0,),
          new GestureDetector(
            onTap: (){},
           child: Padding(
             padding: const EdgeInsets.only(left:5.0),
             child: new Text(
               "Add account",
               textAlign: TextAlign.start,
               style: new TextStyle(
                 fontWeight: FontWeight.bold,
                 color: Colors.blue,
                 fontSize: 17.0
               ),
             ),
           ),
          ),
          SizedBox(height: 25.0,),
          new GestureDetector(
            onTap: (){},
           child: Padding(
             padding: const EdgeInsets.only(left:5.0),
             child: new Text(
               "Log out",
               textAlign: TextAlign.start,
               style: new TextStyle(
                 fontWeight: FontWeight.bold,
                 color: Colors.blue,
                 fontSize: 17.0
               ),
             ),
           ),
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
          "Settings",
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
            new Container(
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 5.0, 45.0),
              color: Colors.grey[300],
              width: MediaQuery.of(context).size.width,
              child:new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    "from",
                    style: new TextStyle(
                      fontSize: 12.0,
                      color:Colors.black45
                    ),
                  ),
                  new Text(
                    "FACEBOOK",
                    style: new TextStyle(
                      fontSize: 16.0,
                      color:Colors.black87
                    ),
                  )

                ],
              )
            )
          ],
        ),
      )
    );
  }
}