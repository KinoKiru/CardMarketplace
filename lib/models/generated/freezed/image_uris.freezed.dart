// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../image_uris.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageUris _$ImageUrisFromJson(Map<String, dynamic> json) {
  return _ImageUris.fromJson(json);
}

/// @nodoc
mixin _$ImageUris {
  Uri get small => throw _privateConstructorUsedError;
  Uri get normal => throw _privateConstructorUsedError;
  Uri get large => throw _privateConstructorUsedError;
  Uri get png => throw _privateConstructorUsedError;
  @JsonKey(name: 'art_crop')
  Uri get artCrop => throw _privateConstructorUsedError;
  @JsonKey(name: 'border_crop')
  Uri get borderCrop => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageUrisCopyWith<ImageUris> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageUrisCopyWith<$Res> {
  factory $ImageUrisCopyWith(ImageUris value, $Res Function(ImageUris) then) =
      _$ImageUrisCopyWithImpl<$Res, ImageUris>;
  @useResult
  $Res call(
      {Uri small,
      Uri normal,
      Uri large,
      Uri png,
      @JsonKey(name: 'art_crop') Uri artCrop,
      @JsonKey(name: 'border_crop') Uri borderCrop});
}

/// @nodoc
class _$ImageUrisCopyWithImpl<$Res, $Val extends ImageUris>
    implements $ImageUrisCopyWith<$Res> {
  _$ImageUrisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? normal = null,
    Object? large = null,
    Object? png = null,
    Object? artCrop = null,
    Object? borderCrop = null,
  }) {
    return _then(_value.copyWith(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as Uri,
      normal: null == normal
          ? _value.normal
          : normal // ignore: cast_nullable_to_non_nullable
              as Uri,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as Uri,
      png: null == png
          ? _value.png
          : png // ignore: cast_nullable_to_non_nullable
              as Uri,
      artCrop: null == artCrop
          ? _value.artCrop
          : artCrop // ignore: cast_nullable_to_non_nullable
              as Uri,
      borderCrop: null == borderCrop
          ? _value.borderCrop
          : borderCrop // ignore: cast_nullable_to_non_nullable
              as Uri,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageUrisImplCopyWith<$Res>
    implements $ImageUrisCopyWith<$Res> {
  factory _$$ImageUrisImplCopyWith(
          _$ImageUrisImpl value, $Res Function(_$ImageUrisImpl) then) =
      __$$ImageUrisImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uri small,
      Uri normal,
      Uri large,
      Uri png,
      @JsonKey(name: 'art_crop') Uri artCrop,
      @JsonKey(name: 'border_crop') Uri borderCrop});
}

/// @nodoc
class __$$ImageUrisImplCopyWithImpl<$Res>
    extends _$ImageUrisCopyWithImpl<$Res, _$ImageUrisImpl>
    implements _$$ImageUrisImplCopyWith<$Res> {
  __$$ImageUrisImplCopyWithImpl(
      _$ImageUrisImpl _value, $Res Function(_$ImageUrisImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? normal = null,
    Object? large = null,
    Object? png = null,
    Object? artCrop = null,
    Object? borderCrop = null,
  }) {
    return _then(_$ImageUrisImpl(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as Uri,
      normal: null == normal
          ? _value.normal
          : normal // ignore: cast_nullable_to_non_nullable
              as Uri,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as Uri,
      png: null == png
          ? _value.png
          : png // ignore: cast_nullable_to_non_nullable
              as Uri,
      artCrop: null == artCrop
          ? _value.artCrop
          : artCrop // ignore: cast_nullable_to_non_nullable
              as Uri,
      borderCrop: null == borderCrop
          ? _value.borderCrop
          : borderCrop // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageUrisImpl implements _ImageUris {
  const _$ImageUrisImpl(
      {required this.small,
      required this.normal,
      required this.large,
      required this.png,
      @JsonKey(name: 'art_crop') required this.artCrop,
      @JsonKey(name: 'border_crop') required this.borderCrop});

  factory _$ImageUrisImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageUrisImplFromJson(json);

  @override
  final Uri small;
  @override
  final Uri normal;
  @override
  final Uri large;
  @override
  final Uri png;
  @override
  @JsonKey(name: 'art_crop')
  final Uri artCrop;
  @override
  @JsonKey(name: 'border_crop')
  final Uri borderCrop;

  @override
  String toString() {
    return 'ImageUris(small: $small, normal: $normal, large: $large, png: $png, artCrop: $artCrop, borderCrop: $borderCrop)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageUrisImpl &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.normal, normal) || other.normal == normal) &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.png, png) || other.png == png) &&
            (identical(other.artCrop, artCrop) || other.artCrop == artCrop) &&
            (identical(other.borderCrop, borderCrop) ||
                other.borderCrop == borderCrop));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, small, normal, large, png, artCrop, borderCrop);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageUrisImplCopyWith<_$ImageUrisImpl> get copyWith =>
      __$$ImageUrisImplCopyWithImpl<_$ImageUrisImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageUrisImplToJson(
      this,
    );
  }
}

abstract class _ImageUris implements ImageUris {
  const factory _ImageUris(
          {required final Uri small,
          required final Uri normal,
          required final Uri large,
          required final Uri png,
          @JsonKey(name: 'art_crop') required final Uri artCrop,
          @JsonKey(name: 'border_crop') required final Uri borderCrop}) =
      _$ImageUrisImpl;

  factory _ImageUris.fromJson(Map<String, dynamic> json) =
      _$ImageUrisImpl.fromJson;

  @override
  Uri get small;
  @override
  Uri get normal;
  @override
  Uri get large;
  @override
  Uri get png;
  @override
  @JsonKey(name: 'art_crop')
  Uri get artCrop;
  @override
  @JsonKey(name: 'border_crop')
  Uri get borderCrop;
  @override
  @JsonKey(ignore: true)
  _$$ImageUrisImplCopyWith<_$ImageUrisImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
