/// basic typedef similar to [https://api.flutter.dev/flutter/foundation/foundation-library.html]
typedef AsyncValueGetter<T> = Future<T> Function();
typedef ValueSetter<T> = Function(T message);
typedef VoidCallback = Function();
typedef PayloadHandler = Function;
