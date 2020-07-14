import 'package:flutter/material.dart';
import 'package:learn_provider/models/countries_controller.dart';
import 'package:learn_provider/models/country.dart';
import 'package:learn_provider/screens/home.dart';
import 'package:learn_provider/services/country_service.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  CountryService countryService = CountryService();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CountriesController>(
          create: (_) => CountriesController(),
        ),
        FutureProvider<List<Country>>(
          create: (_) => countryService.fetchCountries(),
        ),
      ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Countries List',
          theme: ThemeData(primaryColor: Colors.green),
          home: Home(),
        ),
      );
  }
}
