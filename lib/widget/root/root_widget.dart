import 'package:flutter/material.dart';
import 'package:flutter_redux_sigma/service/navigation/route_definition.dart';
import 'package:flutter_redux_sigma/service/navigation/route_direction.dart';
import 'package:flutter_redux_sigma/service/service_locator.dart';

import 'root_view_model.dart';

class RootWidget extends StatefulWidget {
  final RootViewModel viewModel;

  const RootWidget({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RootState();
}

class _RootState extends State<RootWidget> with WidgetsBindingObserver {
  @override
  void initState() {
    widget.viewModel.initialized.command();
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    final routeDefinition = serviceLocator.get<IRouteDefinitionService>();
    return WillPopScope(
      onWillPop: widget.viewModel.willPopCommand.command,
      child: Navigator(
        key: routeDefinition.key,
        initialRoute: _getInitialRoute(),
        onGenerateRoute: routeDefinition.generateRoute,
        observers: [
          HeroController(),
        ],
      ),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      widget.viewModel.resumed.command();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  String _getInitialRoute() {
    return RouteDirection.countries;
  }
}
