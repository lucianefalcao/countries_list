import 'package:flutter/material.dart';
import 'package:learn_provider/models/country.dart';

class CountriesController extends ChangeNotifier {
  List<Country> countries = [
    Country(name: "Brazil", continent: "South America", code: "br"),
    Country(name: "Canada", continent: "North America", code: "ca"),
    Country(name: "England", continent: "Europe", code: "gb"),
    Country(name: "France", continent: "Europe", code: "fr"),
    Country(name: "Italy", continent: "Europe", code: "it"),
    Country(name: "United State", continent: "North America", code: "us"),
  ];

  Country _chosen;

  Country get chosen => _chosen;

  onChange(Country country){
    _chosen = country;
    notifyListeners();
  }
}