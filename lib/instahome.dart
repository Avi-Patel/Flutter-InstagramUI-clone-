import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/accounttab.dart';
import 'package:flutter_instagram_ui/searchtab.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'instabody.dart';

class Instahome extends StatefulWidget {

  @override
  _InstahomeState createState() => _InstahomeState();
}

class _InstahomeState extends State<Instahome> {

  // final List<Widget> pages = [
  //   Instabody(),
  //   Instabody(),
  //   Instabody(),
  //   Instabody(),
  //   Instabody(),
  //   // Searchbody(),
  //   // Uploadbody(),
  //   // Likesbody(),
  //   // Accountbody(),
  // ];


  int _selectedIndex=0;
  // Widget _bottomNavigationBar(int selectedIndex) => BottomNavigationBar(
  //   backgroundColor: Colors.white,
  //   onTap: (int index) => setState(() => _selectedIndex = index),
  //   currentIndex: selectedIndex,
  //   showSelectedLabels: false,
  //   showUnselectedLabels: false,    
  //   items: const <BottomNavigationBarItem>[
  //     BottomNavigationBarItem(
  //       icon: Icon(Icons.home,color: Colors.black,),
  //       title: SizedBox.shrink(),
  //     ),
  //     BottomNavigationBarItem(
  //       icon: Icon(Icons.search,color: Colors.black,),
  //       title: SizedBox.shrink(),
  //     ),
  //     BottomNavigationBarItem(
  //       icon: Icon(Icons.add_box,color: Colors.black,),
  //       title: SizedBox.shrink(),
  //     ),
  //     BottomNavigationBarItem(
  //       icon: Icon(Icons.favorite,color: Colors.black,),
  //       title: SizedBox.shrink(),
  //     ),
  //     BottomNavigationBarItem(
  //       icon: Icon(Icons.account_box,color: Colors.black,),
  //       title: SizedBox.shrink(),
  //     ),
  //   ],
  // );

  Widget body()
  {
    if(_selectedIndex==0)
    {
      return new Instabody();
    }
    else if(_selectedIndex==1)
    {
      return new Searchtab();
    }
    else if(_selectedIndex==2)
    {
      return new Instabody();
    }
    else if(_selectedIndex==3)
    {
      return new Instabody();
    }
    else if(_selectedIndex==4)
    {
      return new Accountbody();
    }
    else
    {
      return new Container(
        child: new Text("sndkl"),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
      bottomNavigationBar:new Container(
        color:Colors.white,
        height: 50.0,
        alignment: Alignment.center,
        child: new BottomAppBar(
          elevation: 0.2,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new IconButton(
                icon: Icon(OMIcons.home),
                onPressed: _selectedIndex==0?null
                  : ()=> setState(()=> _selectedIndex=0),
              ),
              new IconButton(
                icon: Icon(OMIcons.search), 
                onPressed: _selectedIndex==1?null
                  : ()=> setState(()=> _selectedIndex=1),
              ),
              new IconButton(
                icon: Icon(OMIcons.addBox), 
                onPressed: _selectedIndex==2?null
                  : ()=> setState(()=> _selectedIndex=2),
              ),
              new IconButton(
                icon: Icon(OMIcons.favorite), 
                onPressed: _selectedIndex==3?null
                  : ()=> setState(()=> _selectedIndex=3),
              ),
              new IconButton(
                icon: Icon(OMIcons.accountBox), 
                onPressed: _selectedIndex==4?null
                  : ()=> setState(()=> _selectedIndex=4),
              ),
            ],
          ),
        ),
      ) ,
    );
  }
}