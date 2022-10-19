import 'package:flutter_redux_sigma/redux/store.dart';
import 'package:flutter_redux_sigma/service/network/network_service.dart';
import 'package:get_it/get_it.dart';

import 'logging/logging_service.dart';
import 'navigation/navigation_service.dart';
import 'navigation/route_definition.dart';
import 'store/store_service.dart';

final serviceLocator = GetIt.I;

void initDependencies() {
  serviceLocator.registerSingleton<ILoggingService>(LoggingService());

  serviceLocator
      .registerSingleton<IRouteDefinitionService>(RouteDefinitionService());

  serviceLocator.registerSingleton<INavigationService>(
      NavigationService(routeDefinitionService: serviceLocator.get()));

  serviceLocator.registerSingletonAsync<INetworkService>(
    () => NetworkService(
      hostUrl: 'covid-19-data.p.rapidapi.com',
      apiKey: 'f821127222msh7ccd72cf09cd11fp12059cjsn2d62eac973bd',
    ).init(),
  );

  serviceLocator.registerSingletonWithDependencies<IStoreService>(
    () => initStore(),
    dependsOn: [
      INetworkService,
    ],
  );
}
