// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../image_uris.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageUrisImpl _$$ImageUrisImplFromJson(Map<String, dynamic> json) =>
    _$ImageUrisImpl(
      small: json['small'] == null ? null : Uri.parse(json['small'] as String),
      normal:
          json['normal'] == null ? null : Uri.parse(json['normal'] as String),
      large: json['large'] == null ? null : Uri.parse(json['large'] as String),
      png: json['png'] == null ? null : Uri.parse(json['png'] as String),
      artCrop: json['art_crop'] == null
          ? null
          : Uri.parse(json['art_crop'] as String),
      borderCrop: json['border_crop'] == null
          ? null
          : Uri.parse(json['border_crop'] as String),
    );

Map<String, dynamic> _$$ImageUrisImplToJson(_$ImageUrisImpl instance) =>
    <String, dynamic>{
      'small': instance.small?.toString(),
      'normal': instance.normal?.toString(),
      'large': instance.large?.toString(),
      'png': instance.png?.toString(),
      'art_crop': instance.artCrop?.toString(),
      'border_crop': instance.borderCrop?.toString(),
    };
