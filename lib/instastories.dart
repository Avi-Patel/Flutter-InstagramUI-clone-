import 'package:flutter/material.dart';

class Instastories extends StatelessWidget {

  // final toptext=Row(
  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //   children: <Widget>[
  //     new Text(
  //       "Stories",
  //       style: TextStyle(fontWeight: FontWeight.bold),
  //     ),
  //     new Row(
  //       children: <Widget>[
  //         new Icon(Icons.play_arrow),
  //         new Text(
  //           "Watch All",
  //           style: TextStyle(fontWeight: FontWeight.bold),
  //         ),
  //       ],
  //     ),
  //   ],
  // );

  final stories=Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top:8.0),
      child: new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context,index)=> new Stack(
          alignment: Alignment.topRight,
          children: <Widget>[
            new Column(
              children:<Widget>[
                new MaterialButton(
                  onPressed: (){},
                  padding: EdgeInsets.zero,
                  minWidth: 0.0,
                  child: new Container(
                    width:60.0,
                    height: 60.0,
                    decoration: new BoxDecoration(
                      shape:BoxShape.circle,
                      image: new DecorationImage(
                        fit: BoxFit.fill,
                        image:new AssetImage("assets/images/profile.jpg"),
                      ),
                    ),
                    // margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  ),
                ),
                Padding(padding: const EdgeInsets.only(top:5.0),),
                index==0? new SizedBox(
                  width: 75.0,
                  child:new Text(
                    "Your Story",
                    style: new TextStyle(fontSize:12,fontWeight: FontWeight.w500),
                    overflow: TextOverflow.ellipsis,
                  ),
                ):new SizedBox(
                    width: 75.0,
                    child: new Text(
                      "Avi_Patel sjadnsd",
                      style: new TextStyle(fontSize:12,fontWeight: FontWeight.w500),  
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
              ],
            ),
            
            index==0? Positioned(
              right: 5.0,
              bottom:25.0,
              child: new CircleAvatar(
                backgroundColor: Colors.blueAccent,
                radius: 10.0,
                child: new Icon(
                  Icons.add,
                  size: 14.0,
                  color: Colors.white,
                ),
              ),
            ): new Container(),

          ],
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.all(0.0),
      child: new Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          // toptext,
          stories,
        ],
      ),
    );
  }
}