import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/freezed/image_uris.freezed.dart';
part 'generated/g/image_uris.g.dart';

@freezed
class ImageUris with _$ImageUris {
  const factory ImageUris({
    required Uri? small,
    required Uri? normal,
    required Uri? large,
    required Uri? png,
    @JsonKey(name: 'art_crop') required Uri? artCrop,
    @JsonKey(name: 'border_crop') required Uri? borderCrop,
  }) = _ImageUris;

  factory ImageUris.fromJson(Map<String, Object?> json) =>
      _$ImageUrisFromJson(json);
}
