import 'package:flutter/material.dart';
import 'package:flutter_redux_sigma/connector/countries/countries_connector.dart';
import 'package:flutter_redux_sigma/connector/country_details/country_details_connector.dart';

import 'main_route.dart';
import 'route_direction.dart';
import 'transition_type.dart';

abstract class IRouteDefinitionService {
  final key = GlobalKey<NavigatorState>();

  Route<dynamic> generateRoute(RouteSettings settings);
}

class RouteDefinitionService extends IRouteDefinitionService {
  @override
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteDirection.countries:
        return MainRoute(
            widget: const CountriesConnector(),
            settings: settings,
            transitionType: TransitionType.fadeIn);
      case RouteDirection.countryDetails:
        return MainRoute(
            widget: const CountryDetailsConnector(),
            settings: settings,
            transitionType: TransitionType.rightToLeft);
      default:
        return MainRoute(
            widget: Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            ),
            settings: settings,
            transitionType: TransitionType.fadeIn);
    }
  }
}
