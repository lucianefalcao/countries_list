import 'package:flutter/material.dart';
import 'package:learn_provider/models/country.dart';

class CountriesController extends ChangeNotifier {
  Country _chosen;

  Country get chosen => _chosen;

  onChange(Country country){
    _chosen = country; 
    notifyListeners();
  }
}
