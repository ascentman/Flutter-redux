class FunctionHolder {
  final Function() command;

  FunctionHolder(this.command);

  static FunctionHolder? loadingSensitiveButton({
    required bool isLoading,
    required dynamic action,
    required Function(dynamic) dispatch,
  }) =>
      isLoading
          ? null
          : FunctionHolder(
              () => dispatch(action),
            );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FunctionHolder && runtimeType == other.runtimeType;

  @override
  int get hashCode => command.hashCode;
}

class AsyncFunctionHolder<T> {
  final Future<T> Function() command;

  AsyncFunctionHolder(this.command);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FunctionHolder && runtimeType == other.runtimeType;

  @override
  int get hashCode => command.hashCode;
}
