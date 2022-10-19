import 'package:built_value/built_value.dart';
import 'package:flutter_redux_sigma/widget/common/function_holder.dart';

part 'country_item_view_model.g.dart';

abstract class CountryItemViewModel
    implements Built<CountryItemViewModel, CountryItemViewModelBuilder> {
  String get name;

  FunctionHolder? get command;

  CountryItemViewModel._();

  factory CountryItemViewModel(
          [void Function(CountryItemViewModelBuilder) updates]) =
      _$CountryItemViewModel;
}
