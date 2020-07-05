import 'package:flutter/material.dart';
import 'package:learn_provider/widgets/build_list.dart';
import 'package:learn_provider/widgets/information.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BuildList(),
            Information(),
          ],
        ),
      ),
    );
  }
}