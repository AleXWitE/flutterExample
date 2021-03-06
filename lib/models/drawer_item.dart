import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.tealAccent[200],
              ),
              child: Column(
                children: [
                  Text("Navigation",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 34.0,
                    fontFamily: "Redressed"
                  ),),
                  SizedBox(
                    height: 80,
                    child: SvgPicture.asset("assets/images/LoneWolf.svg"),
                  )
                ],
          )),
          ListTile(
            leading: Icon(Icons.wysiwyg),
            title: Text("To list"),
            onTap: () => Navigator.pushNamed(context, '/list_events'),
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text("Add event"),
            onTap: () => Navigator.pushNamed(context, '/add'),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("To home"),
            onTap: () => Navigator.pushNamed(context, '/home'),
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text("About app"),
            onTap: () => Navigator.pushNamed(context, '/about'),
          ),
        ],
      ),
    );

  }

}