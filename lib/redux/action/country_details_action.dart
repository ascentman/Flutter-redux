import 'package:flutter_redux_sigma/service/network/model/country_details/country_details_model.dart';

class CountryDetailsLoaderChangedAction {
  final bool isLoading;

  CountryDetailsLoaderChangedAction(this.isLoading);
}

class CountryDetailsArrivedAction {
  final CountryDetailsModel model;

  CountryDetailsArrivedAction(this.model);
}

class FetchCountryDetailsAction {
  final String name;

  FetchCountryDetailsAction(this.name);
}
