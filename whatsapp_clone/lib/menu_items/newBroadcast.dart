import 'package:flutter/material.dart';

class NewBroadcast extends StatefulWidget {
  @override
  _NewBroadcastState createState() => _NewBroadcastState();
}

class _NewBroadcastState extends State<NewBroadcast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075E54),
        title: Text("New Broadcast"),
      ),
    );
  }
}
