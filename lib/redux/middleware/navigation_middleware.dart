import 'package:flutter_redux_sigma/redux/action/navigation_action.dart';
import 'package:flutter_redux_sigma/redux/middleware/base_middleware.dart';
import 'package:flutter_redux_sigma/redux/state/app/app_state.dart';
import 'package:flutter_redux_sigma/service/navigation/navigation_service.dart';

class NavigationMiddleware extends BaseMiddleware {
  final INavigationService navigationService;

  NavigationMiddleware({
    required this.navigationService,
  });

  @override
  void process(action, AppState state, Function(dynamic action) dispatch) {
    if (action is NavigateToCountryDetails) {
      navigationService.pushNamedCountryDetails();
    }
    if (action is PopBackStackAction) {
      navigationService.pop(force: action.force);
    }
  }
}
