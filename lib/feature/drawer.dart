import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const DrawerHeader(child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                color: Colors.green,
            ),
            accountName: Text('По белу свету'),
            accountEmail: Text('arround.the.world.zp@gmail.com'),
            currentAccountPicture: CircleAvatar(backgroundColor: Colors.blue,)
          )),
          ListTile(
            title: const Text('Наши поездки'),
            leading: const Icon(Icons.account_box),
            onTap:(){
              final SnackBar snackBar = SnackBar(
                  content: const Text('Наши путешествия'),
                  action:  SnackBarAction(
                    label:'undo',
                    onPressed: (){
                      //nothing now
                    },
                  ),
                );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
