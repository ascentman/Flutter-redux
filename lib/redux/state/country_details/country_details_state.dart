import 'package:built_value/built_value.dart';
import 'package:flutter_redux_sigma/service/network/model/country_details/country_details_model.dart';

part 'country_details_state.g.dart';

abstract class CountryDetailsState
    implements Built<CountryDetailsState, CountryDetailsStateBuilder> {
  bool get isLoading;

  CountryDetailsModel? get model;

  String? get name;

  CountryDetailsState._();

  factory CountryDetailsState(
          [void Function(CountryDetailsStateBuilder) updates]) =
      _$CountryDetailsState;

  factory CountryDetailsState.initial() =>
      CountryDetailsState((b) => b..isLoading = false);
}
