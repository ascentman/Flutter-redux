import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../../serializers.dart';

part 'country_model.g.dart';

abstract class CountryModel
    implements Built<CountryModel, CountryModelBuilder> {
  String get name;

  String? get alpha2code;

  String? get alpha3code;

  double? get latitude;

  double? get longitude;

  CountryModel._();

  factory CountryModel([void Function(CountryModelBuilder) updates]) =
      _$CountryModel;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(CountryModel.serializer, this)
        as Map<String, dynamic>;
  }

  static CountryModel fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(CountryModel.serializer, json)!;
  }

  static Serializer<CountryModel> get serializer => _$countryModelSerializer;
}
