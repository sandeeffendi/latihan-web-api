sealed class Result<S> {
  const Result();
}

class Success<S> extends Result<S> {
  final S value;
  const Success(this.value);
}

class Failure<S> extends Result<S> {
  final String error;
  const Failure(this.error);
}
