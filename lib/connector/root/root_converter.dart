import 'package:flutter_redux_sigma/redux/action/common_action.dart';
import 'package:flutter_redux_sigma/redux/action/navigation_action.dart';
import 'package:flutter_redux_sigma/widget/common/function_holder.dart';
import 'package:flutter_redux_sigma/widget/root/root_view_model.dart';

import '../view_model_converter.dart';

class RootConverter extends ViewModelConverter<RootViewModel> {
  late Function dispatch;

  @override
  RootViewModel build() {
    return RootViewModel(
      (b) => b
        ..willPopCommand = AsyncFunctionHolder(_willPopCommand)
        ..initialized = FunctionHolder(_initializedCommand)
        ..resumed = FunctionHolder(_resumedCommand),
    );
  }

  void _initializedCommand() {
    dispatch(AppInitializedAction());
  }

  void _resumedCommand() {
    dispatch(AppResumedAction());
  }

  Future<bool> _willPopCommand() async {
    final action = PopBackStackAction();
    dispatch(action);
    return !await action.result();
  }
}
