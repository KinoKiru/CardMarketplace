// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';

part 'generated/freezed/list_wrapper.freezed.dart';
part 'generated/g/list_wrapper.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class ListWrapper<T> with _$ListWrapper {
  // Constructor, includes every field from the scryfall api
  const factory ListWrapper({
    required String object,
    @JsonKey(name: 'has_more') required bool hasMore,
    @JsonKey(name: 'next_page') Uri? nextPage,
    required List<T> data,
  }) = _ListWrapper;

  factory ListWrapper.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$ListWrapperFromJson<T>(json, fromJsonT);
}
