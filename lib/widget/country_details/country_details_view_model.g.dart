// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_details_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CountryDetailsViewModel extends CountryDetailsViewModel {
  @override
  final String country;
  @override
  final String confirmed;
  @override
  final String recovered;
  @override
  final String critical;
  @override
  final String deaths;
  @override
  final FunctionHolder? refreshCommand;
  @override
  final FunctionHolder backCommand;

  factory _$CountryDetailsViewModel(
          [void Function(CountryDetailsViewModelBuilder)? updates]) =>
      (new CountryDetailsViewModelBuilder()..update(updates)).build();

  _$CountryDetailsViewModel._(
      {required this.country,
      required this.confirmed,
      required this.recovered,
      required this.critical,
      required this.deaths,
      this.refreshCommand,
      required this.backCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        country, 'CountryDetailsViewModel', 'country');
    BuiltValueNullFieldError.checkNotNull(
        confirmed, 'CountryDetailsViewModel', 'confirmed');
    BuiltValueNullFieldError.checkNotNull(
        recovered, 'CountryDetailsViewModel', 'recovered');
    BuiltValueNullFieldError.checkNotNull(
        critical, 'CountryDetailsViewModel', 'critical');
    BuiltValueNullFieldError.checkNotNull(
        deaths, 'CountryDetailsViewModel', 'deaths');
    BuiltValueNullFieldError.checkNotNull(
        backCommand, 'CountryDetailsViewModel', 'backCommand');
  }

  @override
  CountryDetailsViewModel rebuild(
          void Function(CountryDetailsViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountryDetailsViewModelBuilder toBuilder() =>
      new CountryDetailsViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountryDetailsViewModel &&
        country == other.country &&
        confirmed == other.confirmed &&
        recovered == other.recovered &&
        critical == other.critical &&
        deaths == other.deaths &&
        refreshCommand == other.refreshCommand &&
        backCommand == other.backCommand;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, country.hashCode), confirmed.hashCode),
                        recovered.hashCode),
                    critical.hashCode),
                deaths.hashCode),
            refreshCommand.hashCode),
        backCommand.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CountryDetailsViewModel')
          ..add('country', country)
          ..add('confirmed', confirmed)
          ..add('recovered', recovered)
          ..add('critical', critical)
          ..add('deaths', deaths)
          ..add('refreshCommand', refreshCommand)
          ..add('backCommand', backCommand))
        .toString();
  }
}

class CountryDetailsViewModelBuilder
    implements
        Builder<CountryDetailsViewModel, CountryDetailsViewModelBuilder> {
  _$CountryDetailsViewModel? _$v;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _confirmed;
  String? get confirmed => _$this._confirmed;
  set confirmed(String? confirmed) => _$this._confirmed = confirmed;

  String? _recovered;
  String? get recovered => _$this._recovered;
  set recovered(String? recovered) => _$this._recovered = recovered;

  String? _critical;
  String? get critical => _$this._critical;
  set critical(String? critical) => _$this._critical = critical;

  String? _deaths;
  String? get deaths => _$this._deaths;
  set deaths(String? deaths) => _$this._deaths = deaths;

  FunctionHolder? _refreshCommand;
  FunctionHolder? get refreshCommand => _$this._refreshCommand;
  set refreshCommand(FunctionHolder? refreshCommand) =>
      _$this._refreshCommand = refreshCommand;

  FunctionHolder? _backCommand;
  FunctionHolder? get backCommand => _$this._backCommand;
  set backCommand(FunctionHolder? backCommand) =>
      _$this._backCommand = backCommand;

  CountryDetailsViewModelBuilder();

  CountryDetailsViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _country = $v.country;
      _confirmed = $v.confirmed;
      _recovered = $v.recovered;
      _critical = $v.critical;
      _deaths = $v.deaths;
      _refreshCommand = $v.refreshCommand;
      _backCommand = $v.backCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountryDetailsViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CountryDetailsViewModel;
  }

  @override
  void update(void Function(CountryDetailsViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CountryDetailsViewModel build() {
    final _$result = _$v ??
        new _$CountryDetailsViewModel._(
            country: BuiltValueNullFieldError.checkNotNull(
                country, 'CountryDetailsViewModel', 'country'),
            confirmed: BuiltValueNullFieldError.checkNotNull(
                confirmed, 'CountryDetailsViewModel', 'confirmed'),
            recovered: BuiltValueNullFieldError.checkNotNull(
                recovered, 'CountryDetailsViewModel', 'recovered'),
            critical: BuiltValueNullFieldError.checkNotNull(
                critical, 'CountryDetailsViewModel', 'critical'),
            deaths: BuiltValueNullFieldError.checkNotNull(
                deaths, 'CountryDetailsViewModel', 'deaths'),
            refreshCommand: refreshCommand,
            backCommand: BuiltValueNullFieldError.checkNotNull(
                backCommand, 'CountryDetailsViewModel', 'backCommand'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
