// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_details_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CountryDetailsState extends CountryDetailsState {
  @override
  final bool isLoading;
  @override
  final CountryDetailsModel? model;
  @override
  final String? name;

  factory _$CountryDetailsState(
          [void Function(CountryDetailsStateBuilder)? updates]) =>
      (new CountryDetailsStateBuilder()..update(updates)).build();

  _$CountryDetailsState._({required this.isLoading, this.model, this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'CountryDetailsState', 'isLoading');
  }

  @override
  CountryDetailsState rebuild(
          void Function(CountryDetailsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CountryDetailsStateBuilder toBuilder() =>
      new CountryDetailsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CountryDetailsState &&
        isLoading == other.isLoading &&
        model == other.model &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, isLoading.hashCode), model.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CountryDetailsState')
          ..add('isLoading', isLoading)
          ..add('model', model)
          ..add('name', name))
        .toString();
  }
}

class CountryDetailsStateBuilder
    implements Builder<CountryDetailsState, CountryDetailsStateBuilder> {
  _$CountryDetailsState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  CountryDetailsModelBuilder? _model;
  CountryDetailsModelBuilder get model =>
      _$this._model ??= new CountryDetailsModelBuilder();
  set model(CountryDetailsModelBuilder? model) => _$this._model = model;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  CountryDetailsStateBuilder();

  CountryDetailsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _model = $v.model?.toBuilder();
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CountryDetailsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CountryDetailsState;
  }

  @override
  void update(void Function(CountryDetailsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CountryDetailsState build() {
    _$CountryDetailsState _$result;
    try {
      _$result = _$v ??
          new _$CountryDetailsState._(
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'CountryDetailsState', 'isLoading'),
              model: _model?.build(),
              name: name);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'model';
        _model?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CountryDetailsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
