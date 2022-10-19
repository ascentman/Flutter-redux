import 'package:flutter_redux_sigma/redux/state/app/app_state.dart';
import 'package:redux/redux.dart';

abstract class IStoreService {
  Store<AppState> get store;

  AppState get state;

  void dispatch(dynamic action);
}

class StoreService implements IStoreService {
  @override
  final Store<AppState> store;

  StoreService(this.store);

  @override
  AppState get state => store.state;

  @override
  void dispatch(action) {
    store.dispatch(action);
  }
}
