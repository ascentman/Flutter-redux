import 'package:flutter_redux_sigma/redux/action/countries_action.dart';
import 'package:flutter_redux_sigma/redux/state/countries/countries_state.dart';
import 'package:redux/redux.dart';

Reducer<CountriesState> get countriesReducer {
  return combineReducers<CountriesState>([
    TypedReducer(_countriesLoaderChangedAction),
    TypedReducer(_countriesArrivedAction),
  ]);
}

CountriesState _countriesLoaderChangedAction(
    CountriesState state, CountriesLoaderChangedAction action) {
  return state.rebuild(
    (b) => b..isLoading = action.isLoading,
  );
}

CountriesState _countriesArrivedAction(
    CountriesState state, CountriesArrivedAction action) {
  return state.rebuild(
    (b) => b..countries = action.countries.toBuilder(),
  );
}
