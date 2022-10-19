// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CountriesState extends CountriesState {
  @override
  final bool isLoading;
  @override
  final BuiltList<CountryModel>? countries;

  factory _$CountriesState([void Function(CountriesStateBuilder)? updates]) =>
      (new CountriesStateBuilder()..update(updates)).build();

  _$CountriesState._({required this.isLoading, this.countries}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'CountriesState', 'isLoading');
  }

  @override
  CountriesState rebuild(void Function(CountriesStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountriesStateBuilder toBuilder() =>
      new CountriesStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountriesState &&
        isLoading == other.isLoading &&
        countries == other.countries;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, isLoading.hashCode), countries.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CountriesState')
          ..add('isLoading', isLoading)
          ..add('countries', countries))
        .toString();
  }
}

class CountriesStateBuilder
    implements Builder<CountriesState, CountriesStateBuilder> {
  _$CountriesState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  ListBuilder<CountryModel>? _countries;
  ListBuilder<CountryModel> get countries =>
      _$this._countries ??= new ListBuilder<CountryModel>();
  set countries(ListBuilder<CountryModel>? countries) =>
      _$this._countries = countries;

  CountriesStateBuilder();

  CountriesStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _countries = $v.countries?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountriesState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CountriesState;
  }

  @override
  void update(void Function(CountriesStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CountriesState build() {
    _$CountriesState _$result;
    try {
      _$result = _$v ??
          new _$CountriesState._(
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'CountriesState', 'isLoading'),
              countries: _countries?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'countries';
        _countries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CountriesState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
