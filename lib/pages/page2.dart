import 'package:flutter/material.dart';
import 'package:gazz/drawer_items/account_info.dart';
import 'package:gazz/drawer_items/payment_options.dart';
import 'package:gazz/drawer_items/previous_orders.dart';
import 'file:///C:/Users/Kothandapani/AndroidStudioProjects/smartfarmland/lib/utils/sign_in.dart';
import 'package:gazz/widgets/maps.dart';
import '../main.dart';



class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}


class Page2 extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("Profile", Icons.add_circle),
    new DrawerItem("Sensor", Icons.account_box),
    new DrawerItem("Sign Out",Icons.backspace)
  ];
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int _selectedDrawerIndex = 0;
  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new MapSample();
      case 1:
        return new Account_info();
      case 2:
        return new Payment_options();
      case 3:
        signOutGoogle();
        return Page1();
      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }
  @override
  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(
          new ListTile(
            leading: new Icon(d.icon),
            title: new Text(d.title),
            selected: i == _selectedDrawerIndex,
            onTap: () => _onSelectItem(i),
          )
      );
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: new Text(widget.drawerItems[_selectedDrawerIndex].title),

      ),
        drawer: new Drawer(
          child: new Column(
            children: <Widget>[
              new UserAccountsDrawerHeader(

                  accountName: new Text("Tony Stark"), accountEmail: null,),
              new Column(children: drawerOptions),


            ],
          ),
        ),
      body:_getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}
