import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:learn_provider/constants.dart';
import 'package:learn_provider/models/countries_controller.dart';
import 'package:provider/provider.dart';

class Information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CountriesController>(
      builder: (context, countriesController, widget) =>
          countriesController.chosen == null
              ? Center(child: Text("Select a country"))
              : Column(
                  children: <Widget>[
                    Text(
                      "Information",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 40.0),
                    Flag(
                      countriesController.chosen.code,
                      width: 100.0,
                      height: 100.0,
                    ),
                    SizedBox(height: 40.0),
                    Text(
                      countriesController.chosen.name,
                      style: kInformationTextStyle,
                    ),
                    Text(
                      countriesController.chosen.continent,
                      style: kInformationTextStyle,
                    ),
                  ],
                ),
    );
  }
}
