import 'package:flutter_redux_sigma/redux/middleware/navigation_middleware.dart';
import 'package:flutter_redux_sigma/redux/reducer/countries_reducer.dart';
import 'package:flutter_redux_sigma/redux/reducer/country_details_reducer.dart';
import 'package:flutter_redux_sigma/service/service_locator.dart';
import 'package:flutter_redux_sigma/service/store/store_service.dart';
import 'package:redux/redux.dart';

import 'action/common_action.dart';
import 'middleware/countries_middleware.dart';
import 'middleware/country_details_middleware.dart';
import 'middleware/logging_middleware.dart';
import 'state/app/app_state.dart';

IStoreService initStore() {
  return StoreService(
    Store<AppState>(
      (AppState state, dynamic action) {
        if (action is ResetStoreToDefaultAction) {
          return AppState.initial();
        }
        return AppState(
          (b) => b
            ..countriesState =
                countriesReducer(state.countriesState, action).toBuilder()
            ..countryDetailsState =
                countryDetailsReducer(state.countryDetailsState, action)
                    .toBuilder(),
        );
      },
      initialState: AppState.initial(),
      middleware: [
        LoggingMiddleware(
          loggingService: serviceLocator.get(),
        ),
        CountriesMiddleware(
          networkService: serviceLocator.get(),
        ),
        CountryDetailsMiddleware(
          networkService: serviceLocator.get(),
        ),
        NavigationMiddleware(
          navigationService: serviceLocator.get(),
        )
      ],
    ),
  );
}
