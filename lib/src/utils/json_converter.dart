import 'package:json_annotation/json_annotation.dart';

class UTCDateTimeConverter implements JsonConverter<DateTime, String> {
  const UTCDateTimeConverter();

  @override
  DateTime fromJson(String json) {
    return DateTime.parse(json).toLocal();
  }

  @override
  String toJson(DateTime object) {
    return object.toUtc().toIso8601String();
  }
}
