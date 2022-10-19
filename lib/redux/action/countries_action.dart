import 'package:built_collection/built_collection.dart';
import 'package:flutter_redux_sigma/service/network/model/country/country_model.dart';

class FetchCountriesAction {}

class CountriesArrivedAction {
  final BuiltList<CountryModel> countries;

  CountriesArrivedAction(this.countries);
}

class CountriesLoaderChangedAction {
  final bool isLoading;

  CountriesLoaderChangedAction(this.isLoading);
}
