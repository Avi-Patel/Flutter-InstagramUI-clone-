import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/instastories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Instalist extends StatefulWidget {
  @override
  _InstalistState createState() => _InstalistState();
}

class _InstalistState extends State<Instalist> {
  @override
  Widget build(BuildContext context) {
    var devicesize=MediaQuery.of(context).size;
    return new ListView.builder(
      itemCount: 10,
      itemBuilder: (context,index)=>index==0?new SizedBox(
        child: new Instastories(),
        height: devicesize.height *0.13,
      ): Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,

        //1st Row
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0,10.0,6.0,5.0),
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
          new Flexible(
            fit: FlexFit.loose,
            child:new Image.asset(
              "assets/images/profile.jpg",
              fit: BoxFit.cover,
            ),
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
                          onPressed: ()=>{} ,
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
              onPressed: (){},
              padding: EdgeInsets.only(left:10.0),
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
              "1 Day ago",
              style:new TextStyle(
                color:Colors.grey,
                fontSize: 10.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}