// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CountriesViewModel extends CountriesViewModel {
  @override
  final bool isLoading;
  @override
  final BuiltList<CountryItemViewModel>? countries;
  @override
  final String title;
  @override
  final FunctionHolder? refreshCommand;

  factory _$CountriesViewModel(
          [void Function(CountriesViewModelBuilder)? updates]) =>
      (new CountriesViewModelBuilder()..update(updates)).build();

  _$CountriesViewModel._(
      {required this.isLoading,
      this.countries,
      required this.title,
      this.refreshCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'CountriesViewModel', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(title, 'CountriesViewModel', 'title');
  }

  @override
  CountriesViewModel rebuild(
          void Function(CountriesViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountriesViewModelBuilder toBuilder() =>
      new CountriesViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountriesViewModel &&
        isLoading == other.isLoading &&
        countries == other.countries &&
        title == other.title &&
        refreshCommand == other.refreshCommand;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isLoading.hashCode), countries.hashCode),
            title.hashCode),
        refreshCommand.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CountriesViewModel')
          ..add('isLoading', isLoading)
          ..add('countries', countries)
          ..add('title', title)
          ..add('refreshCommand', refreshCommand))
        .toString();
  }
}

class CountriesViewModelBuilder
    implements Builder<CountriesViewModel, CountriesViewModelBuilder> {
  _$CountriesViewModel? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  ListBuilder<CountryItemViewModel>? _countries;
  ListBuilder<CountryItemViewModel> get countries =>
      _$this._countries ??= new ListBuilder<CountryItemViewModel>();
  set countries(ListBuilder<CountryItemViewModel>? countries) =>
      _$this._countries = countries;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  FunctionHolder? _refreshCommand;
  FunctionHolder? get refreshCommand => _$this._refreshCommand;
  set refreshCommand(FunctionHolder? refreshCommand) =>
      _$this._refreshCommand = refreshCommand;

  CountriesViewModelBuilder();

  CountriesViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _countries = $v.countries?.toBuilder();
      _title = $v.title;
      _refreshCommand = $v.refreshCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountriesViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CountriesViewModel;
  }

  @override
  void update(void Function(CountriesViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CountriesViewModel build() {
    _$CountriesViewModel _$result;
    try {
      _$result = _$v ??
          new _$CountriesViewModel._(
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'CountriesViewModel', 'isLoading'),
              countries: _countries?.build(),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'CountriesViewModel', 'title'),
              refreshCommand: refreshCommand);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'countries';
        _countries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CountriesViewModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
