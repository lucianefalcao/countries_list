import 'package:flutter/material.dart';
import 'package:learn_provider/models/countries_controller.dart';
import 'package:learn_provider/models/country.dart';
import 'package:provider/provider.dart';

class BuildList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CountriesController>(
      builder: (context, countriesController, widget) =>
          DropdownButton<Country>(
        isExpanded: true,
        style: TextStyle(color: Colors.white),
        onChanged: (newCountry) => countriesController.onChange(newCountry),
        dropdownColor: Colors.green,
        value: countriesController.chosen,
        items: countriesController.countries
            .map<DropdownMenuItem<Country>>(
              (value) => DropdownMenuItem<Country>(
                value: value,
                child: Text(value.name),
              ),
            )
            .toList(),
      ),
    );
  }
}
