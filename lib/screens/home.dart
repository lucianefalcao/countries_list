import 'package:flutter/material.dart';
import 'package:learn_provider/models/country.dart';
import 'package:learn_provider/widgets/build_list.dart';
import 'package:learn_provider/widgets/information.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Country> countries = Provider.of<List<Country>>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      body: countries == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 250.0,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: BuildList(),
                  ),
                  SizedBox(height: 50.0),
                  Information(),
                ],
              ),
            ),
    );
  }
}
