import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Allposts extends StatefulWidget {
  @override
  _AllpostsState createState() => _AllpostsState();
}

class _AllpostsState extends State<Allposts> {

  Widget _body()
  {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,    
      children: <Widget>[
        Expanded(
          child: new StaggeredGridView.countBuilder(
            crossAxisCount: 6,
            itemCount: 20,
            scrollDirection: Axis.vertical,
            itemBuilder: (context,index)
            {
              return new Material(
                child: new InkWell(
                  borderRadius: new BorderRadius.all(Radius.circular(10.0)),
                  onTap: (){},
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
        ),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: new Color(0xfff8faf8),
        elevation: 0.7,
        title: new Column(
          children: <Widget>[
            new Text(
              "Saved",
              textAlign: TextAlign.start,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'Roboto'
              ),
            ),
            new Text(
              "All Posts",
              style: new TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'Roboto'
              ),
            ),
          ],
        ),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.more_vert), 
            onPressed: ()=>{
              showDialog(
                context: context,
                builder: (context)=> SimpleDialog(
                  children: <Widget>[
                    new SizedBox(
                      height: 20.0,
                      child: new FlatButton(
                        padding: EdgeInsets.zero,
                        onPressed: (){},
                        child: new Text(
                          "Select",
                          style: new TextStyle(color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                )
              ),
            }
          ),
        ],
      ),
      body: _body(),
    );
  }
}