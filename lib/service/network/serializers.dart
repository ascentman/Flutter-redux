import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'model/country/country_model.dart';
import 'model/country_details/country_details_model.dart';

part 'serializers.g.dart';

@SerializersFor([
  CountryModel,
  CountryDetailsModel,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
