// ignore_for_file: invalid_annotation_target
import 'package:card_marketplace/models/converters/uuid.dart';
import 'package:card_marketplace/models/miscellaneous.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';

part 'partials/freezed/list_wrapper.freezed.dart';
part 'partials/g/list_wrapper.g.dart';

@freezed
abstract class BaseListWrapper with _$BaseListWrapper {
  // Constructor, includes every field from the scryfall api
  const factory BaseListWrapper({
    @Default(String) @JsonKey(name: 'object') required String type,
    @Default(bool) required bool hasMore,
    @Default(Uri) Uri? nextPage,
    @Default(List<dynamic>) required dynamic data,
  }) = _BaseListWrapper;

  factory BaseListWrapper.fromJson(Map<String, Object?> json) =>
      _$BaseListWrapperFromJson(json);
}
