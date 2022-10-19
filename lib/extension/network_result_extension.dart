import 'package:flutter_redux_sigma/service/network/network_result.dart';

extension NetworkResultExtension on INetworkResult {
  void when(Function(Success) success, Function(Error) error) {
    if (this is Success) {
      success.call(this as Success);
    } else {
      error(this as Error);
    }
  }
}
