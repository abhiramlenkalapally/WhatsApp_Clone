import 'package:flutter/material.dart';

class StarredMessages extends StatefulWidget {
  @override
  _StarredMessagesState createState() => _StarredMessagesState();
}

class _StarredMessagesState extends State<StarredMessages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075E54),
        title: Text("Starred Messages"),
      ),
    );
  }
}
