import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/accounttab_util.dart/saved/all_posts.dart';
import 'package:flutter_instagram_ui/accounttab_util.dart/saved/all_stories.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Saved extends StatefulWidget {
  @override
  _SavedState createState() => _SavedState();
}

class _SavedState extends State<Saved> {

  Widget _body()
  {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget>[
        Expanded(
          flex: 0,
          child: new MaterialButton(
            onPressed: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Allposts())),
            child: new StaggeredGridView.countBuilder(
              padding: EdgeInsets.fromLTRB(10, 10, 160, 10),
              crossAxisCount: 4,
              itemCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context,index)
              {
                return new Material(
                  // elevation: 8.0,
                  
                  child: new InkWell(
                    borderRadius: new BorderRadius.all(Radius.circular(20.0)),
                    child: new Image.asset(
                      "assets/images/profile.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              staggeredTileBuilder: (index)=> new StaggeredTile.count(2,2),
              mainAxisSpacing: 2.0,
              crossAxisSpacing: 2.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:25.0),
          child: new Text(
            "All Posts",
            style: new TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
        ),

        Expanded(
          flex: 0,
          child: new MaterialButton(
            onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Allstories())),
            child: new StaggeredGridView.countBuilder(
              padding: EdgeInsets.fromLTRB(10, 10, 160, 10),
              crossAxisCount: 4,
              itemCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context,index)
              {
                return new Material(
                  // elevation: 8.0,
                  
                  child: new InkWell(
                    borderRadius: new BorderRadius.all(Radius.circular(20.0)),
                    child: new Image.asset(
                      "assets/images/maserati.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              staggeredTileBuilder: (index)=> new StaggeredTile.count(2,2),
              mainAxisSpacing: 2.0,
              crossAxisSpacing: 2.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:25.0),
          child: new Text(
            "All Stories",
            style: new TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: new Color(0xfff8faf8),
        elevation: 0.7,
        title: new Text(
          "Saved",
          style: new TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            fontFamily: 'Roboto'
          ),
        ),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.add, size:30.0,), 
            onPressed: (){}
          ),
        ],
      ),
      body: _body(),
    );
  }
}