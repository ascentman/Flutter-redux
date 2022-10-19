import 'package:built_value/built_value.dart';
import 'package:flutter_redux_sigma/widget/common/function_holder.dart';

part 'country_details_view_model.g.dart';

abstract class CountryDetailsViewModel
    implements Built<CountryDetailsViewModel, CountryDetailsViewModelBuilder> {
  String get country;

  String get confirmed;

  String get recovered;

  String get critical;

  String get deaths;

  FunctionHolder? get refreshCommand;

  FunctionHolder get backCommand;

  CountryDetailsViewModel._();

  factory CountryDetailsViewModel(
          [void Function(CountryDetailsViewModelBuilder) updates]) =
      _$CountryDetailsViewModel;
}
