import 'package:flutter/material.dart';
import 'package:learn_provider/models/countries_controller.dart';
import 'package:learn_provider/screens/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CountriesController>(
      create: (_) => CountriesController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Countries List',
        theme: ThemeData(primaryColor: Colors.green),
        home: Home(),
      ),
    );
  }
}
