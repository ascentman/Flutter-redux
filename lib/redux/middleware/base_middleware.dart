import 'package:flutter_redux_sigma/redux/state/app/app_state.dart';
import 'package:redux/redux.dart';

abstract class BaseMiddleware implements MiddlewareClass<AppState> {
  @override
  call(Store<AppState> store, action, NextDispatcher next) {
    next(action);
    process(action, store.state, store.dispatch);
  }

  void process(
    dynamic action,
    AppState state,
    Function(dynamic action) dispatch,
  );
}
