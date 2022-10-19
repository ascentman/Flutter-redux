// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_details_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CountryDetailsModel> _$countryDetailsModelSerializer =
    new _$CountryDetailsModelSerializer();

class _$CountryDetailsModelSerializer
    implements StructuredSerializer<CountryDetailsModel> {
  @override
  final Iterable<Type> types = const [
    CountryDetailsModel,
    _$CountryDetailsModel
  ];
  @override
  final String wireName = 'CountryDetailsModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CountryDetailsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'country',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'confirmed',
      serializers.serialize(object.confirmed,
          specifiedType: const FullType(int)),
      'recovered',
      serializers.serialize(object.recovered,
          specifiedType: const FullType(int)),
      'critical',
      serializers.serialize(object.critical,
          specifiedType: const FullType(int)),
      'deaths',
      serializers.serialize(object.deaths, specifiedType: const FullType(int)),
      'latitude',
      serializers.serialize(object.latitude,
          specifiedType: const FullType(double)),
      'longitude',
      serializers.serialize(object.longitude,
          specifiedType: const FullType(double)),
    ];
    Object? value;
    value = object.lastChanged;
    if (value != null) {
      result
        ..add('lastChanged')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastUpdated;
    if (value != null) {
      result
        ..add('lastUpdated')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CountryDetailsModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CountryDetailsModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'confirmed':
          result.confirmed = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'recovered':
          result.recovered = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'critical':
          result.critical = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'deaths':
          result.deaths = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'lastChanged':
          result.lastChanged = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastUpdated':
          result.lastUpdated = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$CountryDetailsModel extends CountryDetailsModel {
  @override
  final String country;
  @override
  final String code;
  @override
  final int confirmed;
  @override
  final int recovered;
  @override
  final int critical;
  @override
  final int deaths;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String? lastChanged;
  @override
  final String? lastUpdated;

  factory _$CountryDetailsModel(
          [void Function(CountryDetailsModelBuilder)? updates]) =>
      (new CountryDetailsModelBuilder()..update(updates)).build();

  _$CountryDetailsModel._(
      {required this.country,
      required this.code,
      required this.confirmed,
      required this.recovered,
      required this.critical,
      required this.deaths,
      required this.latitude,
      required this.longitude,
      this.lastChanged,
      this.lastUpdated})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        country, 'CountryDetailsModel', 'country');
    BuiltValueNullFieldError.checkNotNull(code, 'CountryDetailsModel', 'code');
    BuiltValueNullFieldError.checkNotNull(
        confirmed, 'CountryDetailsModel', 'confirmed');
    BuiltValueNullFieldError.checkNotNull(
        recovered, 'CountryDetailsModel', 'recovered');
    BuiltValueNullFieldError.checkNotNull(
        critical, 'CountryDetailsModel', 'critical');
    BuiltValueNullFieldError.checkNotNull(
        deaths, 'CountryDetailsModel', 'deaths');
    BuiltValueNullFieldError.checkNotNull(
        latitude, 'CountryDetailsModel', 'latitude');
    BuiltValueNullFieldError.checkNotNull(
        longitude, 'CountryDetailsModel', 'longitude');
  }

  @override
  CountryDetailsModel rebuild(
          void Function(CountryDetailsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountryDetailsModelBuilder toBuilder() =>
      new CountryDetailsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountryDetailsModel &&
        country == other.country &&
        code == other.code &&
        confirmed == other.confirmed &&
        recovered == other.recovered &&
        critical == other.critical &&
        deaths == other.deaths &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        lastChanged == other.lastChanged &&
        lastUpdated == other.lastUpdated;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, country.hashCode),
                                        code.hashCode),
                                    confirmed.hashCode),
                                recovered.hashCode),
                            critical.hashCode),
                        deaths.hashCode),
                    latitude.hashCode),
                longitude.hashCode),
            lastChanged.hashCode),
        lastUpdated.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CountryDetailsModel')
          ..add('country', country)
          ..add('code', code)
          ..add('confirmed', confirmed)
          ..add('recovered', recovered)
          ..add('critical', critical)
          ..add('deaths', deaths)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('lastChanged', lastChanged)
          ..add('lastUpdated', lastUpdated))
        .toString();
  }
}

class CountryDetailsModelBuilder
    implements Builder<CountryDetailsModel, CountryDetailsModelBuilder> {
  _$CountryDetailsModel? _$v;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  int? _confirmed;
  int? get confirmed => _$this._confirmed;
  set confirmed(int? confirmed) => _$this._confirmed = confirmed;

  int? _recovered;
  int? get recovered => _$this._recovered;
  set recovered(int? recovered) => _$this._recovered = recovered;

  int? _critical;
  int? get critical => _$this._critical;
  set critical(int? critical) => _$this._critical = critical;

  int? _deaths;
  int? get deaths => _$this._deaths;
  set deaths(int? deaths) => _$this._deaths = deaths;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  String? _lastChanged;
  String? get lastChanged => _$this._lastChanged;
  set lastChanged(String? lastChanged) => _$this._lastChanged = lastChanged;

  String? _lastUpdated;
  String? get lastUpdated => _$this._lastUpdated;
  set lastUpdated(String? lastUpdated) => _$this._lastUpdated = lastUpdated;

  CountryDetailsModelBuilder();

  CountryDetailsModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _country = $v.country;
      _code = $v.code;
      _confirmed = $v.confirmed;
      _recovered = $v.recovered;
      _critical = $v.critical;
      _deaths = $v.deaths;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _lastChanged = $v.lastChanged;
      _lastUpdated = $v.lastUpdated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountryDetailsModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CountryDetailsModel;
  }

  @override
  void update(void Function(CountryDetailsModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CountryDetailsModel build() {
    final _$result = _$v ??
        new _$CountryDetailsModel._(
            country: BuiltValueNullFieldError.checkNotNull(
                country, 'CountryDetailsModel', 'country'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, 'CountryDetailsModel', 'code'),
            confirmed: BuiltValueNullFieldError.checkNotNull(
                confirmed, 'CountryDetailsModel', 'confirmed'),
            recovered: BuiltValueNullFieldError.checkNotNull(
                recovered, 'CountryDetailsModel', 'recovered'),
            critical: BuiltValueNullFieldError.checkNotNull(
                critical, 'CountryDetailsModel', 'critical'),
            deaths: BuiltValueNullFieldError.checkNotNull(
                deaths, 'CountryDetailsModel', 'deaths'),
            latitude: BuiltValueNullFieldError.checkNotNull(
                latitude, 'CountryDetailsModel', 'latitude'),
            longitude: BuiltValueNullFieldError.checkNotNull(
                longitude, 'CountryDetailsModel', 'longitude'),
            lastChanged: lastChanged,
            lastUpdated: lastUpdated);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
