import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_redux_sigma/connector/countries/countries_converter.dart';
import 'package:flutter_redux_sigma/connector/page_connector.dart';
import 'package:flutter_redux_sigma/redux/action/countries_action.dart';
import 'package:flutter_redux_sigma/redux/state/app/app_state.dart';
import 'package:flutter_redux_sigma/widget/countries/countries_view_model.dart';
import 'package:flutter_redux_sigma/widget/countries/countries_widget.dart';

class CountriesConnector
    extends PageConnector<CountriesViewModel, CountriesConverter> {
  const CountriesConnector({Key? key}) : super(key: key);

  @override
  void onInit(BuildContext context, AppState state, Function dispatch) {
    super.onInit(context, state, dispatch);
    dispatch(FetchCountriesAction());
  }

  @override
  Widget buildWidget(BuildContext context, CountriesViewModel viewModel) =>
      CountriesWidget(viewModel: viewModel);

  @override
  CountriesConverter prepareConverter(
      BuildContext context, AppState state, Function(dynamic) dispatch) {
    final countriesState = state.countriesState;
    final converter = CountriesConverter(
      localizations: AppLocalizations.of(context)!,
      dispatch: dispatch,
      isLoading: countriesState.isLoading,
      countries: countriesState.countries,
    );
    return converter;
  }
}
