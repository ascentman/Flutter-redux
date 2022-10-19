import 'package:built_value/built_value.dart';
import 'package:flutter_redux_sigma/widget/common/function_holder.dart';

part 'root_view_model.g.dart';

abstract class RootViewModel
    implements Built<RootViewModel, RootViewModelBuilder> {
  FunctionHolder get initialized;

  FunctionHolder get resumed;

  AsyncFunctionHolder<bool> get willPopCommand;

  RootViewModel._();

  factory RootViewModel([void Function(RootViewModelBuilder) updates]) =
      _$RootViewModel;
}
