// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../list_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BaseListWrapper _$BaseListWrapperFromJson(Map<String, dynamic> json) {
  return _BaseListWrapper.fromJson(json);
}

/// @nodoc
mixin _$BaseListWrapper {
  @JsonKey(name: 'object')
  String get type => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  Uri? get nextPage => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseListWrapperCopyWith<BaseListWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseListWrapperCopyWith<$Res> {
  factory $BaseListWrapperCopyWith(
          BaseListWrapper value, $Res Function(BaseListWrapper) then) =
      _$BaseListWrapperCopyWithImpl<$Res, BaseListWrapper>;
  @useResult
  $Res call(
      {@JsonKey(name: 'object') String type,
      bool hasMore,
      Uri? nextPage,
      dynamic data});
}

/// @nodoc
class _$BaseListWrapperCopyWithImpl<$Res, $Val extends BaseListWrapper>
    implements $BaseListWrapperCopyWith<$Res> {
  _$BaseListWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? hasMore = null,
    Object? nextPage = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as Uri?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseListWrapperImplCopyWith<$Res>
    implements $BaseListWrapperCopyWith<$Res> {
  factory _$$BaseListWrapperImplCopyWith(_$BaseListWrapperImpl value,
          $Res Function(_$BaseListWrapperImpl) then) =
      __$$BaseListWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'object') String type,
      bool hasMore,
      Uri? nextPage,
      dynamic data});
}

/// @nodoc
class __$$BaseListWrapperImplCopyWithImpl<$Res>
    extends _$BaseListWrapperCopyWithImpl<$Res, _$BaseListWrapperImpl>
    implements _$$BaseListWrapperImplCopyWith<$Res> {
  __$$BaseListWrapperImplCopyWithImpl(
      _$BaseListWrapperImpl _value, $Res Function(_$BaseListWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? hasMore = null,
    Object? nextPage = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseListWrapperImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as Uri?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseListWrapperImpl
    with DiagnosticableTreeMixin
    implements _BaseListWrapper {
  const _$BaseListWrapperImpl(
      {@JsonKey(name: 'object') required this.type = String,
      required this.hasMore = bool,
      this.nextPage = Uri,
      required this.data = List<dynamic>});

  factory _$BaseListWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseListWrapperImplFromJson(json);

  @override
  @JsonKey(name: 'object')
  final String type;
  @override
  @JsonKey()
  final bool hasMore;
  @override
  @JsonKey()
  final Uri? nextPage;
  @override
  @JsonKey()
  final dynamic data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BaseListWrapper(type: $type, hasMore: $hasMore, nextPage: $nextPage, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BaseListWrapper'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('hasMore', hasMore))
      ..add(DiagnosticsProperty('nextPage', nextPage))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseListWrapperImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, hasMore, nextPage,
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseListWrapperImplCopyWith<_$BaseListWrapperImpl> get copyWith =>
      __$$BaseListWrapperImplCopyWithImpl<_$BaseListWrapperImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseListWrapperImplToJson(
      this,
    );
  }
}

abstract class _BaseListWrapper implements BaseListWrapper {
  const factory _BaseListWrapper(
      {@JsonKey(name: 'object') required final String type,
      required final bool hasMore,
      final Uri? nextPage,
      required final dynamic data}) = _$BaseListWrapperImpl;

  factory _BaseListWrapper.fromJson(Map<String, dynamic> json) =
      _$BaseListWrapperImpl.fromJson;

  @override
  @JsonKey(name: 'object')
  String get type;
  @override
  bool get hasMore;
  @override
  Uri? get nextPage;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$BaseListWrapperImplCopyWith<_$BaseListWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
