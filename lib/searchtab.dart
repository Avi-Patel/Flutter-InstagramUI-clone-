import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class Searchtab extends StatefulWidget {
  @override
  _SearchtabState createState() => _SearchtabState();
}

class _SearchtabState extends State<Searchtab> {

  TextEditingController searchbar= TextEditingController();
  List<String> tags=[
    'IGTV',
    'Shop',
    'Decor',
    'Travel',
    'Architecture',
    'Food',
    'Art',
    'Nature',
    'Style',
    'TV & Movies',
    'Music',
    'Comics',
    'DIY',
    'Beauty'
  ];

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
            children: [
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

  Widget _searchBody()
  {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new SizedBox(
          height: 30.0,
          child: new ListView.builder(
            itemCount: tags.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index) {
              return new Padding(
                padding: EdgeInsets.only(left:5.0,right:5.0),
                child: Container(
                  decoration: new BoxDecoration(
                    border: Border.all(color:Colors.black38),
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[
                      index==0? Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: new Icon(Icons.video_library),
                      ):SizedBox(width: 0.0,) ,
                      index==1? Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: new Icon(Icons.shop),
                      ): SizedBox(width: 0.0,),
                      FlatButton(
                        color: new Color(0xfff8faf8),
                        // shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
                        // borderSide: BorderSide(color:Colors.black38),
                        onPressed: (){}, 
                        child: new Text(
                          tags[index],
                          style: new TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
          ),
        ),

        SizedBox(height: 10.0,),

        Expanded(
          child: new StaggeredGridView.countBuilder(
            crossAxisCount: 6,
            itemCount: 100,
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
            staggeredTileBuilder: (index)=> new StaggeredTile.count(index%9==0?4:2,index%9==0?4:2),
            mainAxisSpacing: 3.0,
            crossAxisSpacing: 3.0,
          ),
        ),
      ],
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
      onWillPop: ()=>_onbackpressed(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: new Color(0xfff8faf8),
          elevation: 0.0,
          title:new TextField(
            controller: searchbar,
            keyboardType: TextInputType.text,
            decoration: new InputDecoration(
              hintText: "search here",
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search,color: Colors.black,),
            ),
          ),
          // leading: new IconButton(
          //   icon: new Icon(Icons.search), 
          //   onPressed: (){}
          // ),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(OMIcons.centerFocusStrong), 
              onPressed: (){},
            ),
          ],
        ),
        body: _searchBody(),
      ),
    );
  }
}