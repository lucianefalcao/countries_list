class Country {
  final String name;
  final String region;
  final String subregion;
  final String capital;
  final String flag;

  Country({this.name, this.region, this.subregion, this.capital, this.flag});

  factory Country.fromJson(Map<String, dynamic> parsedJson) {
    return Country(
      name: parsedJson['name'],
      region: parsedJson['region'],
      subregion: parsedJson['subregion'],
      capital: parsedJson['capital'],
      flag: parsedJson['flag'],
    );
  }
}