// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'root_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RootViewModel extends RootViewModel {
  @override
  final FunctionHolder initialized;
  @override
  final FunctionHolder resumed;
  @override
  final AsyncFunctionHolder<bool> willPopCommand;

  factory _$RootViewModel([void Function(RootViewModelBuilder)? updates]) =>
      (new RootViewModelBuilder()..update(updates)).build();

  _$RootViewModel._(
      {required this.initialized,
      required this.resumed,
      required this.willPopCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        initialized, 'RootViewModel', 'initialized');
    BuiltValueNullFieldError.checkNotNull(resumed, 'RootViewModel', 'resumed');
    BuiltValueNullFieldError.checkNotNull(
        willPopCommand, 'RootViewModel', 'willPopCommand');
  }

  @override
  RootViewModel rebuild(void Function(RootViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RootViewModelBuilder toBuilder() => new RootViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RootViewModel &&
        initialized == other.initialized &&
        resumed == other.resumed &&
        willPopCommand == other.willPopCommand;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, initialized.hashCode), resumed.hashCode),
        willPopCommand.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RootViewModel')
          ..add('initialized', initialized)
          ..add('resumed', resumed)
          ..add('willPopCommand', willPopCommand))
        .toString();
  }
}

class RootViewModelBuilder
    implements Builder<RootViewModel, RootViewModelBuilder> {
  _$RootViewModel? _$v;

  FunctionHolder? _initialized;
  FunctionHolder? get initialized => _$this._initialized;
  set initialized(FunctionHolder? initialized) =>
      _$this._initialized = initialized;

  FunctionHolder? _resumed;
  FunctionHolder? get resumed => _$this._resumed;
  set resumed(FunctionHolder? resumed) => _$this._resumed = resumed;

  AsyncFunctionHolder<bool>? _willPopCommand;
  AsyncFunctionHolder<bool>? get willPopCommand => _$this._willPopCommand;
  set willPopCommand(AsyncFunctionHolder<bool>? willPopCommand) =>
      _$this._willPopCommand = willPopCommand;

  RootViewModelBuilder();

  RootViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _initialized = $v.initialized;
      _resumed = $v.resumed;
      _willPopCommand = $v.willPopCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RootViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RootViewModel;
  }

  @override
  void update(void Function(RootViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RootViewModel build() {
    final _$result = _$v ??
        new _$RootViewModel._(
            initialized: BuiltValueNullFieldError.checkNotNull(
                initialized, 'RootViewModel', 'initialized'),
            resumed: BuiltValueNullFieldError.checkNotNull(
                resumed, 'RootViewModel', 'resumed'),
            willPopCommand: BuiltValueNullFieldError.checkNotNull(
                willPopCommand, 'RootViewModel', 'willPopCommand'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
