import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_redux_sigma/connector/page_connector.dart';
import 'package:flutter_redux_sigma/redux/action/country_details_action.dart';
import 'package:flutter_redux_sigma/redux/state/app/app_state.dart';
import 'package:flutter_redux_sigma/widget/country_details/country_details_view_model.dart';
import 'package:flutter_redux_sigma/widget/country_details/country_details_widget.dart';

import 'country_details_converter.dart';

class CountryDetailsConnector
    extends PageConnector<CountryDetailsViewModel, CountryDetailsConverter> {
  const CountryDetailsConnector({Key? key}) : super(key: key);

  @override
  void onInit(BuildContext context, AppState state, Function dispatch) {
    super.onInit(context, state, dispatch);
    dispatch(FetchCountryDetailsAction(state.countryDetailsState.name!));
  }

  @override
  Widget buildWidget(BuildContext context, CountryDetailsViewModel viewModel) =>
      CountryDetailsWidget(viewModel: viewModel);

  @override
  CountryDetailsConverter prepareConverter(
      BuildContext context, AppState state, Function(dynamic) dispatch) {
    final countriesState = state.countryDetailsState;
    final converter = CountryDetailsConverter(
      name: countriesState.name!,
      localizations: AppLocalizations.of(context)!,
      dispatch: dispatch,
      isLoading: countriesState.isLoading,
      countryDetailsModel: countriesState.model,
    );
    return converter;
  }
}
