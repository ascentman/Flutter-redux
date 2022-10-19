import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_redux_sigma/redux/action/country_details_action.dart';
import 'package:flutter_redux_sigma/redux/action/navigation_action.dart';
import 'package:flutter_redux_sigma/service/network/model/country_details/country_details_model.dart';
import 'package:flutter_redux_sigma/widget/common/function_holder.dart';
import 'package:flutter_redux_sigma/widget/country_details/country_details_view_model.dart';

import '../view_model_converter.dart';

class CountryDetailsConverter
    extends ViewModelConverter<CountryDetailsViewModel> {
  final AppLocalizations localizations;
  final CountryDetailsModel? countryDetailsModel;
  final bool isLoading;
  final Function(dynamic) dispatch;
  final String name;

  CountryDetailsConverter({
    required this.localizations,
    required this.countryDetailsModel,
    required this.isLoading,
    required this.dispatch,
    required this.name,
  });

  @override
  CountryDetailsViewModel build() {
    return CountryDetailsViewModel(
      (b) => b
        ..refreshCommand = isLoading
            ? null
            : FunctionHolder(() => dispatch(FetchCountryDetailsAction(name)))
        ..backCommand = FunctionHolder(() => dispatch(PopBackStackAction()))
        ..country =
            localizations.countryDetails(countryDetailsModel?.country ?? '-')
        ..confirmed =
            localizations.confirmed(countryDetailsModel?.confirmed ?? '-')
        ..deaths = localizations.deaths(countryDetailsModel?.deaths ?? '-')
        ..critical =
            localizations.critical(countryDetailsModel?.critical ?? '-')
        ..recovered =
            localizations.recovered(countryDetailsModel?.recovered ?? '-'),
    );
  }
}
