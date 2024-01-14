// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../list_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListWrapperImpl<T> _$$ListWrapperImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ListWrapperImpl<T>(
      object: json['object'] as String,
      hasMore: json['has_more'] as bool,
      nextPage: json['next_page'] == null
          ? null
          : Uri.parse(json['next_page'] as String),
      data: fromJsonT(json['data']),
    );

Map<String, dynamic> _$$ListWrapperImplToJson<T>(
  _$ListWrapperImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'object': instance.object,
      'has_more': instance.hasMore,
      'next_page': instance.nextPage?.toString(),
      'data': toJsonT(instance.data),
    };
