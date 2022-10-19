import 'package:built_collection/built_collection.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_redux_sigma/redux/action/countries_action.dart';
import 'package:flutter_redux_sigma/redux/action/navigation_action.dart';
import 'package:flutter_redux_sigma/service/network/model/country/country_model.dart';
import 'package:flutter_redux_sigma/widget/common/function_holder.dart';
import 'package:flutter_redux_sigma/widget/countries/countries_view_model.dart';
import 'package:flutter_redux_sigma/widget/countries/country_item/country_item_view_model.dart';

import '../view_model_converter.dart';

class CountriesConverter extends ViewModelConverter<CountriesViewModel> {
  final AppLocalizations localizations;
  final Function(dynamic) dispatch;
  final bool isLoading;
  final BuiltList<CountryModel>? countries;

  CountriesConverter({
    required this.localizations,
    required this.dispatch,
    required this.isLoading,
    required this.countries,
  });

  @override
  CountriesViewModel build() {
    return CountriesViewModel(
      (b) => b
        ..title = localizations.countries
        ..refreshCommand = isLoading
            ? null
            : FunctionHolder(() => dispatch(FetchCountriesAction()))
        ..isLoading = isLoading
        ..countries = _convertCountries()?.toBuilder(),
    );
  }

  BuiltList<CountryItemViewModel>? _convertCountries() {
    if (countries?.isEmpty ?? true) {
      return null;
    }
    return countries!
        .map(
          (item) => CountryItemViewModel(
            (b) => b
              ..name = item.name
              ..command = FunctionHolder(
                () => dispatch(
                  NavigateToCountryDetails(item.name),
                ),
              ),
          ),
        )
        .toBuiltList();
  }
}
