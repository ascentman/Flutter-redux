import 'package:built_value/built_value.dart';
import 'package:flutter_redux_sigma/redux/state/countries/countries_state.dart';
import 'package:flutter_redux_sigma/redux/state/country_details/country_details_state.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  CountriesState get countriesState;

  CountryDetailsState get countryDetailsState;

  AppState._();

  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;

  factory AppState.initial() => AppState(
        (b) => b
          ..countriesState = CountriesState.initial().toBuilder()
          ..countryDetailsState = CountryDetailsState.initial().toBuilder(),
      );
}
