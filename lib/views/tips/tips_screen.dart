import 'package:flutter/material.dart';

class TipsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Financial Literacy Tips')),
      body: ListView(
        children: [
          Card(child: ListTile(title: Text('Save before you spend.'))),
          Card(child: ListTile(title: Text('Track your savings weekly.'))),
        ],
      ),
    );
  }
}
