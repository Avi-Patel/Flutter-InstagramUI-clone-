import 'package:flutter/material.dart';

class Discoverpeople extends StatefulWidget {
  @override
  _DiscoverpeopleState createState() => _DiscoverpeopleState();
}

class _DiscoverpeopleState extends State<Discoverpeople> {

  String query="";

  List<String> username=[
    "Avi_Patel",
    "Abhi_Patel",
    "Mitul_Khatri",
    "Joker_11",
    "Jaydian_99",
    "d.j.99",
    "Viral_Patel",
    "Megh_Shah",
    "Gj2sndak",
    "D.s.patel",
    "Urmit_Patel",
  ];
  List<String> realname=[
    "Avi Patel",
    "Abhi Patel",
    "Mitul Khatri",
    "Avi Patel",
    "Jaydip Talaviya",
    "Jay Dave",
    "Viral Patel",
    "Megh Shah",
    "Unknown",
    "Devanshu patel",
    "UrmitPatel",
  ];
  @override
  Widget build(BuildContext context) {

    Widget _connectToFB()
    {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left:12.0),
                child: new Row(
                  children: <Widget>[
                    new Stack(
                      children: <Widget>[
                        new CircleAvatar(
                          radius: 30.0,
                          foregroundColor: Theme.of(context).primaryColor,
                          child: new Icon(Icons.flag),
                          
                        ),
                      ],
                    ),

                    SizedBox(width: 20.0,),

                    Expanded(
                      child: Container(
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Text(
                              "Connect to Facebook",
                              style: new TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 5.0,),
                            new Text(
                              "Follow your friends",
                              style: new TextStyle(
                                color: Colors.black54,
                              ),
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),

            SizedBox(width: 10.0,),
            new Padding(
              padding: EdgeInsets.only(right: 8.0),

              child: Container(
                padding: EdgeInsets.fromLTRB(10.0,5.0,10.0,5.0),
                decoration: new BoxDecoration(
                  color:Colors.blue,
                  borderRadius: new BorderRadius.circular(5.0),
                ),
                child: new GestureDetector(
                  onTap: (){},
                  child: new Text(
                    "Connect",
                    style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget _people()
    {
      return Expanded(
        child:new ListView.builder(
          itemCount: username.length,
          itemBuilder: (context,index)
          {
            return 
            new Dismissible(
              key: Key(username[index]),
              background: Container(color: Colors.red),
              onDismissed: (direction){
                setState(() {
                  username.removeAt(index);
                  realname.removeAt(index);
                });
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0,10.0,8.0,10.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left:12.0),
                        child: new Row(
                          children: <Widget>[
                            new Stack(
                              children: <Widget>[
                                new CircleAvatar(
                                  radius: 30.0,
                                  foregroundColor: Theme.of(context).primaryColor,
                                  backgroundColor: Colors.grey,
                                  backgroundImage: new AssetImage("assets/images/profile.jpg"),
                                ),
                                Positioned(
                                  bottom: 0.0,
                                  right: 0.0,
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.deepPurple,
                                    size: 25.0,
                                  ),
                                )
                              ],
                            ),

                            SizedBox(width: 20.0,),
                            Expanded(
                              child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  new Text(
                                    username[index],
                                    style: new TextStyle(
                                      fontWeight: FontWeight.bold
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 3.0,),
                                  new Text(
                                    realname[index],
                                    style: new TextStyle(
                                      color: Colors.black54,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  
                                  SizedBox(height: 3.0,),
                                  new Text(
                                    "Followed by Mark + 100 others",
                                    style: new TextStyle(
                                      color: Colors.black54,
                                      fontSize: 12.0,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  )
                                  
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    SizedBox(width: 10.0,),
                    new Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: new Row(
                        children: <Widget>[
                          new Container(
                            padding: EdgeInsets.fromLTRB(10.0,5.0,10.0,5.0),
                            decoration: new BoxDecoration(
                              border: new Border.all(color:Colors.grey),
                              borderRadius: new BorderRadius.circular(5.0),
                              color: Colors.blue
                            ),
                            child: new GestureDetector(
                              onTap: (){},
                              child: new Text(
                                "Follow",
                                style: new TextStyle(color:Colors.white,fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(width: 8.0,),
                          new GestureDetector(
                            onTap: (){},
                            child: new Icon(Icons.close,size: 18.0,color: Colors.grey,),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
    }

    Widget _body()
    {
      return new Column(
        children: <Widget>[
          _connectToFB(),
          Divider(),
          _people()
        ],
      );
    }

    return Scaffold(
      appBar: new AppBar(
        backgroundColor: new Color(0xfff8faf8),
        title: new Text(
          "Discover people",
          style: new TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            fontFamily: 'Roboto'
          ),
        ),
        elevation: 0.8,
      ),
      body: _body(),
    );
  }
}

