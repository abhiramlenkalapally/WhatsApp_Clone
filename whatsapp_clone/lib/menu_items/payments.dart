import 'package:flutter/material.dart';

class Payments extends StatefulWidget {
  @override
  _PaymentsState createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075E54),
        title: Text("Payments"),
      ),
    );
  }
}
