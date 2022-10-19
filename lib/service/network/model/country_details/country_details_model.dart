import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../../serializers.dart';

part 'country_details_model.g.dart';

abstract class CountryDetailsModel
    implements Built<CountryDetailsModel, CountryDetailsModelBuilder> {
  String get country;

  String get code;

  int get confirmed;

  int get recovered;

  int get critical;

  int get deaths;

  double get latitude;

  double get longitude;

  String? get lastChanged;

  String? get lastUpdated;

  CountryDetailsModel._();
  factory CountryDetailsModel(
          [void Function(CountryDetailsModelBuilder) updates]) =
      _$CountryDetailsModel;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(CountryDetailsModel.serializer, this)
        as Map<String, dynamic>;
  }

  static CountryDetailsModel fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(CountryDetailsModel.serializer, json)!;
  }

  static Serializer<CountryDetailsModel> get serializer =>
      _$countryDetailsModelSerializer;
}
