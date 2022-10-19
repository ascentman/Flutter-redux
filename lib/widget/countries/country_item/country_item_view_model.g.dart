// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_item_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CountryItemViewModel extends CountryItemViewModel {
  @override
  final String name;
  @override
  final FunctionHolder? command;

  factory _$CountryItemViewModel(
          [void Function(CountryItemViewModelBuilder)? updates]) =>
      (new CountryItemViewModelBuilder()..update(updates)).build();

  _$CountryItemViewModel._({required this.name, this.command}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'CountryItemViewModel', 'name');
  }

  @override
  CountryItemViewModel rebuild(
          void Function(CountryItemViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountryItemViewModelBuilder toBuilder() =>
      new CountryItemViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountryItemViewModel &&
        name == other.name &&
        command == other.command;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), command.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CountryItemViewModel')
          ..add('name', name)
          ..add('command', command))
        .toString();
  }
}

class CountryItemViewModelBuilder
    implements Builder<CountryItemViewModel, CountryItemViewModelBuilder> {
  _$CountryItemViewModel? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  FunctionHolder? _command;
  FunctionHolder? get command => _$this._command;
  set command(FunctionHolder? command) => _$this._command = command;

  CountryItemViewModelBuilder();

  CountryItemViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _command = $v.command;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountryItemViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CountryItemViewModel;
  }

  @override
  void update(void Function(CountryItemViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CountryItemViewModel build() {
    final _$result = _$v ??
        new _$CountryItemViewModel._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'CountryItemViewModel', 'name'),
            command: command);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
