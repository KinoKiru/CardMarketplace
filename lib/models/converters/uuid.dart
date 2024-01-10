import 'package:freezed_annotation/freezed_annotation.dart';

class UUID extends JsonConverter<String, String> {
  const UUID();

  @override
  String fromJson(String json) {
    return validateString(json);
  }

  @override
  String toJson(String object) {
    return validateString(object);
  }

  String validateString(String value) {
    final RegExp _regExp = RegExp(
        r'^[0-9a-fA-F]{8}\b-[0-9a-fA-F]{4}\b-[0-9a-fA-F]{4}\b-[0-9a-fA-F]{4}\b-[0-9a-fA-F]{12}$');

    if (_regExp.hasMatch(value)) {
      return value;
    } else {
      throw Exception("Json field does not satisfy UUID format");
    }
  }
}
