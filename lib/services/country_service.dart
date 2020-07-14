import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_provider/models/country.dart';

const url = 'https://restcountries.eu/rest/v2/all';

class CountryService {
  Future<List<Country>> fetchCountries() async {
    var response = await http.get(url);
    var jsonResponse = json.decode(response.body) as List;
    return jsonResponse.map((country) => Country.fromJson(country)).toList();
  }
}