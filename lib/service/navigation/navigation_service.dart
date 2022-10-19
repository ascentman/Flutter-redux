import 'package:flutter_redux_sigma/service/navigation/route_direction.dart';

import 'route_definition.dart';

abstract class INavigationService {
  Future<bool> pop({required bool force});

  void popUntil(String routeName);

  void pushNamedCountryDetails();
}

class NavigationService extends INavigationService {
  final IRouteDefinitionService routeDefinitionService;

  NavigationService({
    required this.routeDefinitionService,
  });

  @override
  void popUntil(String routeName) {
    routeDefinitionService.key.currentState?.popUntil(
      (route) => route.settings.name == routeName,
    );
  }

  @override
  Future<bool> pop({required bool force}) async {
    if (force) {
      routeDefinitionService.key.currentState?.pop();
      return true;
    } else {
      return routeDefinitionService.key.currentState!.maybePop();
    }
  }

  @override
  void pushNamedCountryDetails() {
    routeDefinitionService.key.currentState
        ?.pushNamed(RouteDirection.countryDetails);
  }
}
