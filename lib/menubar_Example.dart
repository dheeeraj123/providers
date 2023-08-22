import 'package:flutter/material.dart';

class menubar extends StatelessWidget {
  const menubar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(elevation: 20,
            title: Text("MENUBAR",),backgroundColor: Colors.red),
        drawer: Drawer(backgroundColor: Colors.white,
          width: 250,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 30,
          child: ListView(children: [
            DrawerHeader(
                child: Container(
                  decoration: BoxDecoration(color: Colors.black38,
                     image: DecorationImage(image: NetworkImage("https://th.bing.com/th?id=OIP.49CH_m8xcY3b6stGkMkG2AHaEO&w=330&h=188&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2")),
                     shape: BoxShape.circle),)),
            Divider(color: Colors.pink,thickness: 2),

            ListTile(
              title: Text("BAR",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              trailing: Icon(Icons.accessibility_new,color: Colors.pink,),
            ),
            Divider(color: Colors.pink,thickness: 2),

            ListTile(
              title: Text("Home",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              trailing: Icon(Icons.holiday_village_sharp,color: Colors.yellow,),

            ),
            Divider(color: Colors.pink,thickness: 2),
            ListTile(
              title: Text("Account",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              trailing: Icon(Icons.account_circle_rounded,color: Colors.black54,),

            ),
            Divider(color: Colors.pink,thickness: 2),

          ]),
        ),
      ),
    );

  }
}
