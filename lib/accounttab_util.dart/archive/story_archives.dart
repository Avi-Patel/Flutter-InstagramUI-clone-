import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Storyarchive extends StatefulWidget {
  @override
  _StoryarchiveState createState() => _StoryarchiveState();
}

class _StoryarchiveState extends State<Storyarchive> {

  String title="Stories archive";

  void _change()
  {
    if(title=="Stories archive")
    {
      title="Posts archive";
      setState(() {});
    }
    else 
    {
      title="Stories archive";
      setState(() {});
    }
  }

  Widget archivedStories()
  {
    return new Column(
      children: <Widget>[
        Expanded(
          child: new StaggeredGridView.countBuilder(
            crossAxisCount: 3,
            itemCount: 100,
            reverse: true,
            itemBuilder: (context,index)
            {
              return new Material(
                // elevation: 8.0,
                
                child: new Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                  
                    new InkWell(
                      borderRadius: new BorderRadius.all(Radius.circular(10.0)),
                      onTap: (){},
                        // showDialog(context: context,
                        // builder:(context)=> _showimagedetails(context,index,"assets/images/profile.jpg")),
                      child: new Image.asset(
                        "assets/images/profile.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),

                    new Positioned(
                      left: 8.0,
                      top: 8.0,
                      child: new Container(
                        padding: EdgeInsets.all(5.0),
                        width: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color:Colors.white,
                        ),
                        child: new Column(
                          children:<Widget>[
                            new Text(
                              "10",
                              style: new TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            new Text(
                              "April",
                              style: new TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                      )
                    ),
                  ],
                ),
              );
            },
            staggeredTileBuilder: (index)=> new StaggeredTile.count(1,1.8),
            mainAxisSpacing: 3.0,
            crossAxisSpacing: 3.0,
          ),
        ),

        new Padding(
          padding: EdgeInsets.all(10.0),
          child: new Text(
            "Only you can see your memories and archived stories unless you choose to share them.",
            textAlign:TextAlign.center,
            style: new TextStyle(
              color: Colors.black38,
            ),
          ),
        ),
      ],
    );
  }
  Widget archivedPosts()
  {
    return new Column(
      children: <Widget>[
        Expanded(
          child: new StaggeredGridView.countBuilder(
            crossAxisCount: 3,
            itemCount: 100,
            reverse: true,
            itemBuilder: (context,index)
            {
              return new Material(
                // elevation: 8.0,
                
                child: new Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                  
                    new InkWell(
                      borderRadius: new BorderRadius.all(Radius.circular(10.0)),
                      onTap: (){},
                        // showDialog(context: context,
                        // builder:(context)=> _showimagedetails(context,index,"assets/images/profile.jpg")),
                      child: new Image.asset(
                        "assets/images/maserati.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),

                    new Positioned(
                      left: 8.0,
                      top: 8.0,
                      child: new Container(
                        padding: EdgeInsets.all(5.0),
                        width: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color:Colors.white,
                        ),
                        child: new Column(
                          children:<Widget>[
                            new Text(
                              "15",
                              style: new TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            new Text(
                              "March",
                              style: new TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                      )
                    ),
                  ],
                ),
              );
            },
            staggeredTileBuilder: (index)=> new StaggeredTile.count(1,1.8),
            mainAxisSpacing: 3.0,
            crossAxisSpacing: 3.0,
          ),
        ),

        new Padding(
          padding: EdgeInsets.all(10.0),
          child: new Text(
            "Only you can see your memories and archived posts unless you choose to share them.",
            textAlign:TextAlign.center,
            style: new TextStyle(
              color: Colors.black38,
            ),
          ),
        ),
      ],
    );
  }

  Widget _showdialog()
  {
    return SimpleDialog(
      contentPadding: EdgeInsets.all(0.0),
      title: new Text(
        "More options",
        textAlign: TextAlign.center,
        style: new TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      children: <Widget>[
        new SizedBox(height: 10.0,),
        new Divider(),
        new SizedBox(
          height: 40.0,
          child: new FlatButton(
            onPressed: (){}, 
            child: new Text(
              "Create highlight",
            )
          ),
        ),
        new Divider(),
        new SizedBox(
          height: 40.0,
          child: new FlatButton(
            onPressed: (){}, 
            child: new Text(
              "Settings",
            )
          ),
        ),
        new SizedBox(height: 5.0,)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Row(
          children:<Widget>[
            new Text(
              title,
              style: new TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'Roboto'
              ),
            ),
            new IconButton(
              padding: EdgeInsets.all(0.0),
              icon: new Icon(Icons.arrow_drop_down), 
              iconSize: 40.0,
              onPressed: ()=> _change(),
            ),
          ],
        ),
        backgroundColor: new Color(0xfff8faf8),
        elevation: 0.1,
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.more_vert), 
            onPressed: ()=> showDialog(
              context: context,
              builder:(context)=> _showdialog()),
          ),
        ],
      ),
      body: title=="Stories archive"? archivedStories():archivedPosts(),
    );
  }
}