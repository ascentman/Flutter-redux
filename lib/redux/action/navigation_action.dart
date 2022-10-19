import 'dart:async';

class PopBackStackAction {
  final bool force;
  final Completer<bool> _completer = Completer();

  PopBackStackAction({this.force = false});

  Future<bool> result() => _completer.future;

  void complete(bool result) => _completer.complete(result);
}

class NavigateToCountryDetails {
  final String name;

  NavigateToCountryDetails(this.name);
}
