import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_sigma/service/service_locator.dart';

import 'connector/root/root_connector.dart';
import 'redux/state/app/app_state.dart';
import 'service/store/store_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initDependencies();
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: FutureBuilder(
        future: serviceLocator.allReady(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            final storeService = serviceLocator<IStoreService>();
            return StoreProvider<AppState>(
              store: storeService.store,
              child: const RootConnector(),
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
