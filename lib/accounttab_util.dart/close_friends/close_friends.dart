import 'package:flutter/material.dart';

class Closefriends extends StatefulWidget {
  @override
  _ClosefriendsState createState() => _ClosefriendsState();
}

class _ClosefriendsState extends State<Closefriends> {

  TextEditingController searchCtrl=new TextEditingController();
  String searchstr="";

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
    return Column(
      children: <Widget>[
        new Container(
          color: Colors.grey[200],
          padding: EdgeInsets.all(20.0),
          child:new Text(
            "We don't send notifications when you edit your Close friends list. How it works",
            textAlign: TextAlign.center,
          )
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: new TextField(
            controller: searchCtrl,
            decoration: new InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "Search",
              border:OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              contentPadding: EdgeInsets.all(0.0),
            ),
          ),
        ),

        SizedBox(height: 10.0,),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:12.0),
              child: new Text(
                "Close Friends",
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right:12.0),
              child: GestureDetector(
                onTap: (){},
                child: new Text(
                  "Remove all",
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Colors.blue,
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 10.0,),
        Expanded(
          child:new ListView.builder(
            itemCount: 10,
            itemBuilder: (context,index)
            {
              return 
              (searchCtrl.toString().length==0 
              || username[index].toLowerCase().contains(searchstr.toLowerCase())
              || realname[index].toLowerCase().contains(searchstr.toLowerCase()))?
              Padding(
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
                                  SizedBox(height: 5.0,),
                                  new Text(
                                    realname[index],
                                    style: new TextStyle(
                                      color: Colors.black54,
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

                      child: Container(
                        padding: EdgeInsets.fromLTRB(10.0,5.0,10.0,5.0),
                        decoration: new BoxDecoration(
                          border: new Border.all(color:Colors.grey),
                          borderRadius: new BorderRadius.circular(5.0),
                        ),
                        child: new GestureDetector(
                          onTap: (){},
                          child: new Text(
                            "Remove",
                            style: new TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
              :
              new Container();
            },
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
        elevation: 1,
        title: new Text(
          "Close Friends",
          style: new TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            fontFamily: 'Roboto'
          ),
        ),
        actions: <Widget>[
          new SizedBox(
            width: 75.0,
            child:new FlatButton(
              onPressed:()=> showSearch(context: context, delegate: Datasearch()), 
              child: new Text(
                "Add",
                style: new TextStyle(
                  fontSize: 18.0,
                  color:Colors.blue,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          )
        ],
      ),
      body: _body(),
    );
  }
}

class Datasearch extends SearchDelegate<String>{
  @override
  List<Widget> buildActions(BuildContext context) {
    
    return [
      new IconButton
      (
        icon: Icon
        (
          Icons.clear
        ), 
        onPressed: (){ query="";}
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return 
      new IconButton(
        icon: new AnimatedIcon(
          icon: AnimatedIcons.menu_arrow, 
          progress: transitionAnimation,
        ), 
        onPressed: (){
          close(context, null);
        }
      );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    
    return Addfavlist(query);
  }

}

Widget Addfavlist(String query)
{
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
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      new Padding(
        padding: EdgeInsets.fromLTRB(10.0,10.0,10.0,10.0),
        child: new Text(
          "Suggestions",
          style: new TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      Expanded(
        child:new ListView.builder(
          itemCount: 10,
          itemBuilder: (context,index)
          {
            return 
            username[index].toLowerCase().contains(query.toLowerCase())
            || realname[index].toLowerCase().contains(query.toLowerCase())?
            Padding(
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
                                SizedBox(height: 5.0,),
                                new Text(
                                  realname[index],
                                  style: new TextStyle(
                                    color: Colors.black54,
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

                    child: Container(
                      padding: EdgeInsets.fromLTRB(20.0,5.0,20.0,5.0),
                      decoration: new BoxDecoration(
                        border: new Border.all(color:Colors.grey),
                        borderRadius: new BorderRadius.circular(5.0),
                        color: Colors.blue
                      ),
                      child: new GestureDetector(
                        onTap: (){},
                        child: new Text(
                          "Add",
                          style: new TextStyle(fontWeight: FontWeight.bold,color:Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
            :
            new Container();
          },
        ),
      ),
    ],
  );
}