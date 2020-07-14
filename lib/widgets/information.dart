import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                    SvgPicture.network(countriesController.chosen.flag,
                        width: 150.0),
                    SizedBox(height: 40.0),
                    Text(
                      countriesController.chosen.name,
                      style: kInformationTextStyle,
                    ),
                    Text(
                      countriesController.chosen.region,
                      style: kInformationTextStyle,
                    ),
                    Text(
                      countriesController.chosen.subregion,
                      style: kInformationTextStyle,
                    ),
                    Text(
                      countriesController.chosen.capital,
                      style: kInformationTextStyle,
                    ),
                  ],
                ),
    );
  }
}
