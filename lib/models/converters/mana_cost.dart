import 'package:freezed_annotation/freezed_annotation.dart';

class ManaCost extends JsonConverter<double, String> {
  const ManaCost();

  @override
  double fromJson(String json) {
    if (json.isNotEmpty && !json.contains("Infinity")) {
      return double.tryParse(json.toString()) ?? 0.0;
    }
    return 0.0;
  }

  @override
  String toJson(double object) {
    return object.toString();
  }
}
