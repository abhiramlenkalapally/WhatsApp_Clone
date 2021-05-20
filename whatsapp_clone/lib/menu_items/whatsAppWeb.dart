import 'package:flutter/material.dart';

class WhatsAppWeb extends StatefulWidget {
  @override
  _WhatsAppWebState createState() => _WhatsAppWebState();
}

class _WhatsAppWebState extends State<WhatsAppWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075E54),
        title: Text("WhatsApp Web"),
      ),
    );
  }
}
