import 'package:flutter_redux_sigma/extension/network_result_extension.dart';
import 'package:flutter_redux_sigma/redux/action/country_details_action.dart';
import 'package:flutter_redux_sigma/redux/middleware/base_middleware.dart';
import 'package:flutter_redux_sigma/redux/state/app/app_state.dart';
import 'package:flutter_redux_sigma/service/network/network_service.dart';

class CountryDetailsMiddleware extends BaseMiddleware {
  final INetworkService networkService;

  CountryDetailsMiddleware({
    required this.networkService,
  });

  @override
  void process(action, AppState state, Function(dynamic) dispatch) {
    if (action is FetchCountryDetailsAction) {
      _handleNavigateToCountryDetails(action.name, dispatch);
    }
  }

  void _handleNavigateToCountryDetails(
    String name,
    Function(dynamic) dispatch,
  ) {
    dispatch(
      CountryDetailsLoaderChangedAction(true),
    );
    networkService
        .getCountryDetails(name)
        .then(
          (value) => value.when(
              (success) => dispatch(CountryDetailsArrivedAction(success.data)),
              (error) => null),
        )
        .catchError((e, stacktrace) => null)
        .whenComplete(
          () => dispatch(
            CountryDetailsLoaderChangedAction(false),
          ),
        );
  }
}
