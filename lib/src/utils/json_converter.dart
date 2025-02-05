import 'package:json_annotation/json_annotation.dart';

class UTCDateTimeConverter implements JsonConverter<DateTime, String> {
  const UTCDateTimeConverter();

  @override
  DateTime fromJson(String json) {
    return DateTime.parse(json);
  }

  @override
  String toJson(DateTime object) {
    return object.toUtc().toIso8601String();
  }
}

@Deprecated("User json bool")
class BoolConverter implements JsonConverter<bool, String> {
  const BoolConverter();

  @override
  bool fromJson(String json) {
    return bool.parse(json);
  }

  @override
  String toJson(bool object) {
    return object.toString();
  }
}
