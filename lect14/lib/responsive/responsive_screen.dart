import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResponsiveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MediaQuery.of(context).orientation == Orientation.portrait
        ? PhoneScreen()
        : TabletScreen();
  }
}

class PhoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Responsive'),
        ),
        body: Container(
          width: 200,
          color: Colors.red,
        ));
  }
}

class TabletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Tablet Screen')),
      body: Row(
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      child: Text('O'),
                    ),
                    accountName: Text('Omar'),
                    accountEmail: Text('omar@gmail.com')),
                ListTile(
                  leading: Icon(Icons.home),
                  trailing: Icon(Icons.arrow_forward_ios),
                  title: Text('Home'),
                ),
                ListTile(
                  leading: Icon(Icons.favorite),
                  trailing: Icon(Icons.arrow_forward_ios),
                  title: Text('Favourite'),
                ),
                ListTile(
                  leading: Icon(Icons.perm_identity),
                  trailing: Icon(Icons.arrow_forward_ios),
                  title: Text('Profile'),
                )
              ],
            ),
          )),
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
