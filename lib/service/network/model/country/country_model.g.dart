// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CountryModel> _$countryModelSerializer =
    new _$CountryModelSerializer();

class _$CountryModelSerializer implements StructuredSerializer<CountryModel> {
  @override
  final Iterable<Type> types = const [CountryModel, _$CountryModel];
  @override
  final String wireName = 'CountryModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, CountryModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.alpha2code;
    if (value != null) {
      result
        ..add('alpha2code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.alpha3code;
    if (value != null) {
      result
        ..add('alpha3code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.latitude;
    if (value != null) {
      result
        ..add('latitude')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.longitude;
    if (value != null) {
      result
        ..add('longitude')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  CountryModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CountryModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'alpha2code':
          result.alpha2code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'alpha3code':
          result.alpha3code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$CountryModel extends CountryModel {
  @override
  final String name;
  @override
  final String? alpha2code;
  @override
  final String? alpha3code;
  @override
  final double? latitude;
  @override
  final double? longitude;

  factory _$CountryModel([void Function(CountryModelBuilder)? updates]) =>
      (new CountryModelBuilder()..update(updates)).build();

  _$CountryModel._(
      {required this.name,
      this.alpha2code,
      this.alpha3code,
      this.latitude,
      this.longitude})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'CountryModel', 'name');
  }

  @override
  CountryModel rebuild(void Function(CountryModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountryModelBuilder toBuilder() => new CountryModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountryModel &&
        name == other.name &&
        alpha2code == other.alpha2code &&
        alpha3code == other.alpha3code &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, name.hashCode), alpha2code.hashCode),
                alpha3code.hashCode),
            latitude.hashCode),
        longitude.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CountryModel')
          ..add('name', name)
          ..add('alpha2code', alpha2code)
          ..add('alpha3code', alpha3code)
          ..add('latitude', latitude)
          ..add('longitude', longitude))
        .toString();
  }
}

class CountryModelBuilder
    implements Builder<CountryModel, CountryModelBuilder> {
  _$CountryModel? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _alpha2code;
  String? get alpha2code => _$this._alpha2code;
  set alpha2code(String? alpha2code) => _$this._alpha2code = alpha2code;

  String? _alpha3code;
  String? get alpha3code => _$this._alpha3code;
  set alpha3code(String? alpha3code) => _$this._alpha3code = alpha3code;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  CountryModelBuilder();

  CountryModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _alpha2code = $v.alpha2code;
      _alpha3code = $v.alpha3code;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountryModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CountryModel;
  }

  @override
  void update(void Function(CountryModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CountryModel build() {
    final _$result = _$v ??
        new _$CountryModel._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'CountryModel', 'name'),
            alpha2code: alpha2code,
            alpha3code: alpha3code,
            latitude: latitude,
            longitude: longitude);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
