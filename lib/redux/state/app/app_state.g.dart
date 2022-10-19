// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppState extends AppState {
  @override
  final CountriesState countriesState;
  @override
  final CountryDetailsState countryDetailsState;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {required this.countriesState, required this.countryDetailsState})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        countriesState, 'AppState', 'countriesState');
    BuiltValueNullFieldError.checkNotNull(
        countryDetailsState, 'AppState', 'countryDetailsState');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        countriesState == other.countriesState &&
        countryDetailsState == other.countryDetailsState;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, countriesState.hashCode), countryDetailsState.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('countriesState', countriesState)
          ..add('countryDetailsState', countryDetailsState))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  CountriesStateBuilder? _countriesState;
  CountriesStateBuilder get countriesState =>
      _$this._countriesState ??= new CountriesStateBuilder();
  set countriesState(CountriesStateBuilder? countriesState) =>
      _$this._countriesState = countriesState;

  CountryDetailsStateBuilder? _countryDetailsState;
  CountryDetailsStateBuilder get countryDetailsState =>
      _$this._countryDetailsState ??= new CountryDetailsStateBuilder();
  set countryDetailsState(CountryDetailsStateBuilder? countryDetailsState) =>
      _$this._countryDetailsState = countryDetailsState;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _countriesState = $v.countriesState.toBuilder();
      _countryDetailsState = $v.countryDetailsState.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              countriesState: countriesState.build(),
              countryDetailsState: countryDetailsState.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'countriesState';
        countriesState.build();
        _$failedField = 'countryDetailsState';
        countryDetailsState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
