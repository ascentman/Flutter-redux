import 'package:flutter_redux_sigma/redux/action/country_details_action.dart';
import 'package:flutter_redux_sigma/redux/action/navigation_action.dart';
import 'package:flutter_redux_sigma/redux/state/country_details/country_details_state.dart';
import 'package:redux/redux.dart';

Reducer<CountryDetailsState> get countryDetailsReducer {
  return combineReducers<CountryDetailsState>([
    TypedReducer(_navigateToCountryDetails),
    TypedReducer(_countryDetailsArrivedAction),
    TypedReducer(_countryDetailsLoaderChangedAction),
  ]);
}

CountryDetailsState _navigateToCountryDetails(
    CountryDetailsState state, NavigateToCountryDetails action) {
  return CountryDetailsState.initial().rebuild(
    (b) => b..name = action.name,
  );
}

CountryDetailsState _countryDetailsArrivedAction(
    CountryDetailsState state, CountryDetailsArrivedAction action) {
  return state.rebuild(
    (b) => b..model = action.model.toBuilder(),
  );
}

CountryDetailsState _countryDetailsLoaderChangedAction(
    CountryDetailsState state, CountryDetailsLoaderChangedAction action) {
  return state.rebuild(
    (b) => b..isLoading = action.isLoading,
  );
}
