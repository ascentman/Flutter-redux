import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter_redux_sigma/widget/common/function_holder.dart';
import 'package:flutter_redux_sigma/widget/countries/country_item/country_item_view_model.dart';

part 'countries_view_model.g.dart';

abstract class CountriesViewModel
    implements Built<CountriesViewModel, CountriesViewModelBuilder> {
  bool get isLoading;

  BuiltList<CountryItemViewModel>? get countries;

  String get title;

  FunctionHolder? get refreshCommand;

  CountriesViewModel._();
  factory CountriesViewModel(
          [void Function(CountriesViewModelBuilder) updates]) =
      _$CountriesViewModel;
}
