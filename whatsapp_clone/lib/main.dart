import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/menu_items/newBroadcast.dart';
import 'package:whatsapp_clone/menu_items/newGroup.dart';
import 'package:whatsapp_clone/menu_items/payments.dart';
import 'package:whatsapp_clone/menu_items/settings.dart';
import 'package:whatsapp_clone/menu_items/starredMessages.dart';
import 'package:whatsapp_clone/menu_items/whatsAppWeb.dart';
import 'package:whatsapp_clone/screens/contact_list.dart';
import 'package:whatsapp_clone/tab_items/whatsApp_calls.dart';
import 'package:whatsapp_clone/tab_items/whatsApp_home.dart';
import 'package:whatsapp_clone/tab_items/whatsApp_status.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(myListener);
  }

  void myListener() {
    setState(() {});
  }

  List<Widget> _tabs = [
    Container(
      margin: EdgeInsets.only(bottom: 10, top: 10),
      child: Text(
        "CHATS",
      ),
    ),
    Container(
      margin: EdgeInsets.only(bottom: 10, top: 10),
      child: Text(
        "STATUS",
      ),
    ),
    Container(
      margin: EdgeInsets.only(bottom: 10, top: 10),
      child: Text(
        "CALLS",
      ),
    ),
  ];

  Widget myFloatingAction() {
    if (_tabController.index == 0) {
      print(_tabController.index);
      return FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ContactList()));
        },
        backgroundColor: Color(0xff25D366),
        child: Icon(
          Icons.message_rounded,
        ),
      );
    } else if (_tabController.index == 1) {
      print(_tabController.index);
      return FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ContactList()));
        },
        backgroundColor: Color(0xff25D366),
        child: Icon(
          Icons.camera_alt,
        ),
      );
    } else {
      print(_tabController.index);
      return FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ContactList()));
        },
        backgroundColor: Color(0xff25D366),
        child: Icon(Icons.call),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075E54),
        title: Text("WhatsApp"),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: _tabs,
        ),
        actions: [
          GestureDetector(
            child: Container(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.search,
              ),
            ),
          ),
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewGroup(),
                      ),
                    ),
                    child: ListTile(
                      title: Text("New group"),
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewBroadcast(),
                      ),
                    ),
                    child: ListTile(
                      title: Text("New Broadcast"),
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WhatsAppWeb(),
                      ),
                    ),
                    child: ListTile(
                      title: Text("WhatsApp Web"),
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StarredMessages(),
                      ),
                    ),
                    child: ListTile(
                      title: Text("Starred Messages"),
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Payments(),
                      ),
                    ),
                    child: ListTile(
                      title: Text("Payments"),
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Settings(),
                      ),
                    ),
                    child: ListTile(
                      title: Text("Settings"),
                    ),
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          WhatsApp(),
          Status(),
          Calls(),
        ],
      ),
      floatingActionButton: myFloatingAction(),
    );
  }
}
