import 'package:flutter_redux_sigma/redux/state/app/app_state.dart';
import 'package:flutter_redux_sigma/service/logging/logging_service.dart';

import 'base_middleware.dart';

class LoggingMiddleware extends BaseMiddleware {
  final ILoggingService loggingService;

  LoggingMiddleware({
    required this.loggingService,
  });

  @override
  void process(action, AppState state, Function(dynamic) dispatch) {
    loggingService.log(action);
  }
}
