import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/accounttab_util.dart/close_friends/close_friends.dart';
import 'package:flutter_instagram_ui/accounttab_util.dart/discover_people/discover_people.dart';
import 'package:flutter_instagram_ui/accounttab_util.dart/edit_profile/edit_profile.dart';
import 'package:flutter_instagram_ui/accounttab_util.dart/archive/story_archives.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'accounttab_util.dart/settings/settings.dart';

import 'accounttab_util.dart/saved/saved.dart';

class Accountbody extends StatefulWidget {

  Accountbody({Key key}): super(key:key);

  @override
  _AccountbodyState createState() => _AccountbodyState();
}

class _AccountbodyState extends State<Accountbody> {
  List<String> data=[
    "Avi Patel",
    "DAIICTian|21",
    "Cricket Lover",
    "VK~RS~HP",
  ];

  GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();

  int _curIndex=0;

  // Widget namerow()
  // {
  //   return new Column(
  //     children: <Widget>[
  //       new Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: <Widget>[
            
  //           new Row(
  //             children: <Widget>[
  //               new Padding(padding: const EdgeInsets.fromLTRB(14.0, 0.0, 0.0, 0.0)),
  //               new Text(
  //                 "Avi_Patel",
  //                 style: new TextStyle(fontWeight:FontWeight.bold,fontSize:15.0),
  //               ),

  //               new IconButton(
  //                 icon: new Icon(Icons.arrow_drop_down), 
  //                 iconSize: 40.0,
  //                 onPressed: (){},
  //                 color: Colors.black,
  //               ),
  //             ],
  //           ),

  //           new IconButton(
  //             icon: new Icon(Icons.menu), 
  //             onPressed: (){},
  //           ),
  //         ],
  //       ),
  //     ],
  //   );  
  // }

  Widget detailsrow()
  {
    return new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Padding(padding: const EdgeInsets.fromLTRB(14.0, 0.0, 0.0, 0.0)),
            new Container(
              height: 70.0,
              width: 70.0,
              decoration: new BoxDecoration(
                shape:BoxShape.circle,
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image:new AssetImage("assets/images/profile.jpg"),
                ),
              ),
            ),
            
            new MaterialButton(
              
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "3",
                    style:new TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
                  ),
                  new Text(
                    "Posts",
                    style:new TextStyle(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              onPressed: (){},
            ),

            new MaterialButton(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "400",
                    style:new TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
                  ),
                  new Text(
                    "Followers",
                    style:new TextStyle(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              onPressed: (){},
            ),

            new MaterialButton(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "400",
                    style:new TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
                  ),
                  new Text(
                    "Following",
                    style:new TextStyle(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              onPressed: (){},
            ),
          ],
        );
  }

  Widget biodata()
  {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Padding(padding: const EdgeInsets.only(top:5.0)),
        Padding(
          padding: const EdgeInsets.fromLTRB(14.0, 0.0, 0.0, 0.0),
          child: new Text(
            data[0],
            style: new TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(14.0, 0.0, 0.0, 0.0),
          child: new Text(
            data[1],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(14.0, 0.0, 0.0, 0.0),
          child: new Text(
            data[2],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(14.0, 0.0, 0.0, 0.0),
          child: new Text(
            data[3],            
          ),
        ),
      ],
    );
  }

  Widget editprofile()
  {
    return new Container(
      margin: const EdgeInsets.fromLTRB(14.0, 20.0, 14.0, 5.0),
      alignment: Alignment.center,
      height: 30.0,
      decoration: new BoxDecoration(
        border: Border.all(color:Colors.black26),
        borderRadius: BorderRadius.circular(8.0)
      ),
      child:new MaterialButton(
        // color: Colors.transparent,
        child: new Text(
          "Edit Profile",
          style: new TextStyle(
            fontWeight: FontWeight.w600
          ),
        ),
        onPressed: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => Editprofile())),
      ),
    );
  }

  Widget highlights()
  {
    return new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Padding(
                  padding: const EdgeInsets.fromLTRB(14.0, 0.0, 0.0, 0.0),
                  child: new Text(
                    "Story Highlights",
                    style: new TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.fromLTRB(14.0, 0.0, 0.0, 0.0),
                  child: new Text("Keep your favourite stories on your profile")
                ),
              ],
            ),
            new IconButton(
              icon: new Icon(Icons.arrow_drop_up), 
              onPressed: (){}
            ),
          ],
        );
  }

  Widget stories()
  {
    var devicesize=MediaQuery.of(context).size;
    return new SizedBox(
      height: devicesize.height*0.15,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new Expanded(
            child: new Padding(
              padding: const EdgeInsets.only(top:8.0,left:14.0),
              child: new ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(0.0),
                itemCount: 10,
                itemBuilder: (context,index)=> new Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    index==0? 
                    new Column(
                      children:<Widget> [
                        new Container(
                          width: 60.0,
                          height: 60.0,                      
                          child: new IconButton(
                            icon:new Icon(Icons.add),
                            onPressed: (){},
                          ),
                          decoration: new BoxDecoration(
                            shape:BoxShape.circle,
                            border: Border.all(color:Colors.black),
                          ),
                        ),
                        new Padding(padding: const EdgeInsets.only(top:5.0),),
                        new Text("New"),
                      ],
                    ):
                    new Column(
                      children: <Widget>[
                        new Container(
                          height: 60.0,
                          width: 60.0,
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: new BoxDecoration(
                            shape:BoxShape.circle,
                            // image: new DecorationImage(
                            //   fit: BoxFit.fill,
                            //   image:new AssetImage("assets/images/profile.jpg")
                            // ),
                            color: Colors.grey[200],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _showimagedetails(BuildContext context, int index,String s)
  {
    var i=index+1;
    return SimpleDialog(
      elevation: 1.0,
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0)
        )
      ),
      children:[ 
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0,0.0,6.0,5.0),
                child:  new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new MaterialButton(
                      padding: EdgeInsets.zero,
                      minWidth: 0.0,
                      onPressed: (){},
                      child: new Row(
                        children: <Widget>[
                          new Container(
                            height: 30.0,
                            width: 30.0,
                            decoration: new BoxDecoration(
                              shape:BoxShape.circle,
                              image: new DecorationImage(
                                fit: BoxFit.fill,
                                image:new AssetImage("assets/images/profile.jpg"),
                              ),
                            ),
                          ),

                          new SizedBox(
                            width: 8.0,
                          ),
                          new Text(
                            "Avi_Patel",
                            style: new TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),

                    new IconButton(
                      icon: Icon(Icons.more_vert),
                      onPressed: (){},
                    ),
                  ],
                ),
              ),

              //2nd Row
              Image.asset(
                s,
                fit: BoxFit.cover,
              ),
              

              //3rd Row
              new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new SizedBox(
                  height: 30.0,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new SizedBox(
                            width: 35.0,
                            child: new MaterialButton(
                              padding: EdgeInsets.zero,
                              minWidth: 0.0,
                              onPressed: (){},
                              child: new Icon(
                                FontAwesomeIcons.heart,
                              ),
                            ),
                          ),
                          new SizedBox(
                            width: 35.0,
                            child: new MaterialButton(
                              padding: EdgeInsets.zero,
                              minWidth: 0.0,
                              onPressed: (){},
                              child: new Icon(
                                FontAwesomeIcons.comment,
                              ),
                            ),
                          ),
                          new SizedBox(
                            width:35.0,
                            child: new MaterialButton(
                              padding: EdgeInsets.zero,
                              minWidth: 0.0,
                              onPressed: (){},
                              child: new Icon(
                                FontAwesomeIcons.paperPlane,
                              ),
                            ),
                          ),
                        ],
                      ),
                      new SizedBox(
                        width:35.0,
                        child: new MaterialButton(
                          padding: EdgeInsets.zero,
                          minWidth: 0.0,
                          onPressed: (){},
                          child: new Icon(
                            FontAwesomeIcons.bookmark,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //4th row
              new SizedBox(
                height: 20.0,
                child: FlatButton(
                  padding: EdgeInsets.only(left:10.0),
                  onPressed: (){},
                  child: new Text(
                    "Liked by Abhi_patel and 322 others",
                    textAlign:TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              //5th Row
              new Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 2.0, 0.0, 2.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: new BoxDecoration(
                        shape:BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image:new AssetImage("assets/images/profile.jpg"),
                        ),
                      ),
                    ), 

                    new SizedBox(width: 10.0,),

                    new Expanded(
                      child: new TextField(
                        decoration: new InputDecoration(
                          border: InputBorder.none,
                          hintText: "Add a comment...",
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            //6th Row
              new Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: new Text(
                  i<=30?"$i Days ago"
                  :(
                    i<=365?"${(i~/30)} Months ago"
                    :"${(i~/365)} Years ago"
                  ),
                  style:new TextStyle(
                    color:Colors.grey,
                    fontSize: 10.0,
                  ),
                ),
              ),
              new Padding(padding: const EdgeInsets.only(bottom: 10.0)),

              //7th Row
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new MaterialButton(
                    onPressed: ()=>Navigator.of(context).pop(),
                    child: new Icon(
                      Icons.close,
                      size: 20.0,
                      color: Colors.white,
                    ),
                    shape: new CircleBorder(),
                    height: 30.0,
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );  
  }

  Widget tabs()
  {
    return new Column(
      // controller: _tabController,
      children: <Widget>[
        new Divider(),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:<Widget>[
            new IconButton(
              icon: Icon(Icons.grid_on), 
              
              onPressed: _curIndex==0?null
                :()=> setState(()=> _curIndex=0),
            ),
            new IconButton(
              icon: Icon(Icons.tag_faces), 
              onPressed: _curIndex==1?null
                :()=> setState(()=> _curIndex=1),
            ),
          ],
        ),
      ],
    );
  }

  Widget tab1()
  {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new StaggeredGridView.countBuilder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 6,
          itemCount: 50,
          itemBuilder: (context,index)
          {
            return new Material(
              // elevation: 8.0,
              
              child: new InkWell(
                borderRadius: new BorderRadius.all(Radius.circular(10.0)),
                onTap: ()=>
                  showDialog(context: context,
                  builder:(context)=> _showimagedetails(context,index,"assets/images/profile.jpg")),
                child: new Image.asset(
                  "assets/images/profile.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
          staggeredTileBuilder: (index)=> new StaggeredTile.count(2,2),
          mainAxisSpacing: 3.0,
          crossAxisSpacing: 3.0,
        ),
      ],
    );
  }
  Widget tab2()
  {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new StaggeredGridView.countBuilder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          crossAxisCount: 6,
          itemCount: 50,
          itemBuilder: (context,index)
          {
            return new Material(
              // elevation: 8.0,
              
              child: new InkWell(
                borderRadius: new BorderRadius.all(Radius.circular(10.0)),
                onTap: ()=>
                  showDialog(context: context,
                  builder:(context)=> _showimagedetails(context,index,"assets/images/maserati.jpg")),
                child: new Image.asset(
                  "assets/images/maserati.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
          staggeredTileBuilder: (index)=> new StaggeredTile.count(2,2),
          mainAxisSpacing: 3.0,
          crossAxisSpacing: 3.0,
        ),
      ],
    );
  }
  Widget bodybottom()
  {
    if(_curIndex==0)
    return tab1();
    else
    return tab2();
  }

  Widget bottomsheet()
  {
    return new Column(
      children: <Widget>[
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Padding(padding: const EdgeInsets.fromLTRB(14.0, 0.0, 0.0, 0.0)),
            new Container(
              height: 70.0,
              width: 70.0,
              decoration: new BoxDecoration(
                shape:BoxShape.circle,
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image:new AssetImage("assets/images/profile.jpg"),
                ),
              ),
            ),
            
            new MaterialButton(
              
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "3",
                    style:new TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
                  ),
                  new Text(
                    "Posts",
                    style:new TextStyle(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              onPressed: (){},
            ),

            new MaterialButton(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "400",
                    style:new TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
                  ),
                  new Text(
                    "Followers",
                    style:new TextStyle(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              onPressed: (){},
            ),

            new MaterialButton(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "400",
                    style:new TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
                  ),
                  new Text(
                    "Following",
                    style:new TextStyle(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              onPressed: (){},
            ),
          ],
        ),
      ],
    );
  }

  Widget topbar(BuildContext context)=> new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    // centerTitle: true,  
    elevation: 0.7,
    title:new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Avi_Patel",
              style: new TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'Roboto'
              ),
            ),

            new IconButton(
              icon: new Icon(Icons.arrow_drop_down), 
              iconSize: 40.0,
              onPressed: ()=>showModalBottomSheet(
                elevation: 1.0,
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
                    child: FractionallySizedBox(
                    heightFactor: 0.2,
                    child: Padding(
                      padding: const EdgeInsets.only(top:10.0),
                      child: new ListView.builder(                      
                        itemCount: 4,
                        shrinkWrap: true,
                        itemBuilder: (context,index)=>
                          index!=(3)?
                          Padding(
                            padding: const EdgeInsets.only(top:8.0),
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                new Row(
                                  children: <Widget>[
                                    new Container(
                                      margin: EdgeInsets.only(left:20.0),
                                      height: 50.0,
                                      width: 50.0,
                                      decoration: new BoxDecoration(
                                        shape:BoxShape.circle,
                                        image: new DecorationImage(
                                          fit: BoxFit.fill,
                                          image:new AssetImage("assets/images/profile.jpg"),
                                        ),
                                      ),
                                    ),
                                    new Padding(
                                      padding: EdgeInsets.only(left:10.0),
                                      child: new Text(
                                        "Avi_Patel",
                                        style: new TextStyle(fontSize:14.0,fontWeight: FontWeight.w600),
                                      ),
                                    ),  
                                  ],
                                ),                            
                                new IconButton(
                                  icon: Icon(
                                    Icons.account_circle
                                  ), 
                                  onPressed:(){},
                                ),
                              ],
                            ),
                          )
                          :
                          new Padding(
                            padding: const EdgeInsets.only(top:8.0,bottom: 10.0),
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                new Row(
                                  children: <Widget>[
                                    new Container(
                                      width: 50.0,
                                      height: 50.0,                      
                                      margin: EdgeInsets.only(left:20.0),
                                      child: new IconButton(
                                        icon:new Icon(Icons.add),
                                        onPressed: (){},
                                      ),
                                      decoration: new BoxDecoration(
                                        shape:BoxShape.circle,
                                        border: Border.all(color:Colors.black),
                                      ),
                                    ),
                                    new Padding(
                                      padding: EdgeInsets.only(left:10.0),
                                      child: new Text(
                                        "Add account",
                                        style: new TextStyle(fontSize:14.0,fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),                                                        
                              ],
                            ),
                          ),
                        ),
                    ),                          
                    ),
                  );
                }
              ),
              // {
              //   showBottomSheet(
              //     context: context,
              //     builder: (context) => bottomsheet(),
              //   );
              // },
              color: Colors.black,
            ),
          ],
        ),
      ],
    ),    
  );

  Widget enddrawer()
  {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return new Drawer(
      child: Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // new Padding(
            //   padding: EdgeInsets.only(top:statusBarHeight),
            // ),
            // new SizedBox(
            //   height: 25.0,
            //   child: new Text(
            //     "Avi_Patel",
            //     style: TextStyle(
            //       fontSize: 15.0,
            //       fontWeight: FontWeight.w600,
            //     ),
            //   ),
            // ),
            // Divider(),
            new SizedBox(height:statusBarHeight,),
            new SizedBox(
              height: 45,
              child: new ListTile(
                title:  new Text(
                  "Avi_Patel",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onTap: (){},
              ),
            ),
            new Divider(thickness: 1.0,),
            new SizedBox(
              height: 45,
              child: new ListTile(
                title:  new Text(
                  "Archive",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: new Icon(Icons.history,color: Colors.black,),
                onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=> new Storyarchive())),
              ),
            ),
            new SizedBox(
              height: 45,
              child: new ListTile(
                title:  new Text(
                  "Your Activity",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: new Icon(OMIcons.watchLater,color: Colors.black,),
                onTap: (){},
              ),
            ),
            new SizedBox(
              height: 45,
              child: new ListTile(
                title:  new Text(
                  "Nametag",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: new Icon(OMIcons.centerFocusStrong,color: Colors.black,),
                onTap: (){},
              ),
            ),
            new SizedBox(
              height: 45,
              child:new ListTile(
                title:  new Text(
                  "Saved",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: new Icon(OMIcons.bookmarks,color: Colors.black,),
                onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=> new Saved())),
              ),
            ),
            new SizedBox(
              height: 45,
              child: new ListTile(
                title:  new Text(
                  "Close Friends",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: new Icon(OMIcons.formatListBulleted,color: Colors.black,),
                onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=> new Closefriends())),
              ),
            ),
            new SizedBox(
              height: 45,
              child: new ListTile(
                title:  new Text(
                  "Discover People",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: new Icon(OMIcons.personAdd,color: Colors.black,),
                onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=> new Discoverpeople())),
              ),
            ),
            new SizedBox(
              height: 45,
              child: new ListTile(
                title:  new Text(
                  "Open facebook",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: new Icon(OMIcons.openWith,color: Colors.black,),
                onTap: (){},
              ),
            ),

            Expanded(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: new ListTile(
                  title:  new Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  leading: new Icon(OMIcons.settings,color: Colors.black,),
                  onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=> new Settings())),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

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
      onWillPop: () async {
        if(_key.currentState.isEndDrawerOpen)
        {
          print(1);
          Navigator.of(context).pop();
          return false;
        }
        else
        {
          print(2);
          return _onbackpressed();
        }
      },
      child: Scaffold(
        key: _key,
        appBar: topbar(context),
        endDrawer: enddrawer(),
        // new Drawer(        
        //   child: Container(
        //     color: Colors.black,
        //     child: new ListView(
        //       children: <Widget>[
        //         new Container(
        //           color: Colors.black,
        //           child: Column(
        //             children: <Widget>[
        //               new ListTile(
        //                 title: new Text(
        //                   "wmdnw",
        //                   style: TextStyle(color: Colors.white),
        //                 ),
        //                 // trailing: new Icon(Icons.settings),
        //                 leading:new Icon(
        //                   Icons.account_box,
        //                   color: Colors.white,
        //                 ),
        //                 onTap: (){}
        //               ),
        //               new Divider(
        //                 color: Colors.green,
        //               ),
        //               new ListTile(
        //                 title: new Text(
        //                   "Settings",
        //                   style: TextStyle(color:Colors.white),
        //                 ),
        //                 // trailing: new Icon(Icons.settings),
        //                 leading:new Icon(
        //                   Icons.settings,
        //                   color: Colors.white,
        //                 ),
        //                 onTap: null,
        //               ),
        //             ],
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
          body:new SafeArea(
                    child: new Column(
              children: <Widget>[
                new Expanded(
                  child: new ListView(
                    children: <Widget>[
                      // namerow(),
                      new Padding(padding: EdgeInsets.only(top:5.0)),
                      detailsrow(),
                      biodata(),
                      editprofile(),
                      highlights(),
                      stories(),
                      tabs(),
                      bodybottom(),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}