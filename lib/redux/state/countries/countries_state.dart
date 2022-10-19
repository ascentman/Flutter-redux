import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter_redux_sigma/service/network/model/country/country_model.dart';

part 'countries_state.g.dart';

abstract class CountriesState
    implements Built<CountriesState, CountriesStateBuilder> {
  bool get isLoading;

  BuiltList<CountryModel>? get countries;

  CountriesState._();

  factory CountriesState([void Function(CountriesStateBuilder) updates]) =
      _$CountriesState;

  factory CountriesState.initial() =>
      CountriesState((b) => b..isLoading = false);
}
