abstract class INetworkResult<T> {}

class Success<T> extends INetworkResult<T> {
  final T? data;

  Success(this.data);
}

class Error<T> extends INetworkResult<T> {
  final int code;

  Error(this.code);
}
