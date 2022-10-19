import 'package:flutter_redux_sigma/extension/network_result_extension.dart';
import 'package:flutter_redux_sigma/redux/action/countries_action.dart';
import 'package:flutter_redux_sigma/redux/middleware/base_middleware.dart';
import 'package:flutter_redux_sigma/redux/state/app/app_state.dart';
import 'package:flutter_redux_sigma/service/network/network_service.dart';

class CountriesMiddleware extends BaseMiddleware {
  final INetworkService networkService;

  CountriesMiddleware({
    required this.networkService,
  });

  @override
  void process(action, AppState state, Function(dynamic) dispatch) {
    if (action is FetchCountriesAction) {
      _handleFetchCountriesAction(dispatch);
    }
  }

  void _handleFetchCountriesAction(Function(dynamic) dispatch) {
    dispatch(
      CountriesLoaderChangedAction(true),
    );
    networkService
        .getListOfCountries()
        .then(
          (value) => value.when(
              (success) => dispatch(CountriesArrivedAction(success.data)),
              (error) => null),
        )
        .catchError((e, stacktrace) => null)
        .whenComplete(
          () => dispatch(
            CountriesLoaderChangedAction(false),
          ),
        );
  }
}
