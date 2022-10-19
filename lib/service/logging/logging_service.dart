abstract class ILoggingService {
  void log(dynamic action);
}

class LoggingService implements ILoggingService {
  @override
  void log(action) {
    print(action.toString());
  }
}
