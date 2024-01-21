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

ListWrapper<T> _$ListWrapperFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ListWrapper<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ListWrapper<T> {
  String get object => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_more')
  bool get hasMore => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page')
  Uri? get nextPage => throw _privateConstructorUsedError;
  List<T> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListWrapperCopyWith<T, ListWrapper<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListWrapperCopyWith<T, $Res> {
  factory $ListWrapperCopyWith(
          ListWrapper<T> value, $Res Function(ListWrapper<T>) then) =
      _$ListWrapperCopyWithImpl<T, $Res, ListWrapper<T>>;
  @useResult
  $Res call(
      {String object,
      @JsonKey(name: 'has_more') bool hasMore,
      @JsonKey(name: 'next_page') Uri? nextPage,
      List<T> data});
}

/// @nodoc
class _$ListWrapperCopyWithImpl<T, $Res, $Val extends ListWrapper<T>>
    implements $ListWrapperCopyWith<T, $Res> {
  _$ListWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? object = null,
    Object? hasMore = null,
    Object? nextPage = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as Uri?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListWrapperImplCopyWith<T, $Res>
    implements $ListWrapperCopyWith<T, $Res> {
  factory _$$ListWrapperImplCopyWith(_$ListWrapperImpl<T> value,
          $Res Function(_$ListWrapperImpl<T>) then) =
      __$$ListWrapperImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {String object,
      @JsonKey(name: 'has_more') bool hasMore,
      @JsonKey(name: 'next_page') Uri? nextPage,
      List<T> data});
}

/// @nodoc
class __$$ListWrapperImplCopyWithImpl<T, $Res>
    extends _$ListWrapperCopyWithImpl<T, $Res, _$ListWrapperImpl<T>>
    implements _$$ListWrapperImplCopyWith<T, $Res> {
  __$$ListWrapperImplCopyWithImpl(
      _$ListWrapperImpl<T> _value, $Res Function(_$ListWrapperImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? object = null,
    Object? hasMore = null,
    Object? nextPage = freezed,
    Object? data = null,
  }) {
    return _then(_$ListWrapperImpl<T>(
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as Uri?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ListWrapperImpl<T>
    with DiagnosticableTreeMixin
    implements _ListWrapper<T> {
  const _$ListWrapperImpl(
      {required this.object,
      @JsonKey(name: 'has_more') required this.hasMore,
      @JsonKey(name: 'next_page') this.nextPage,
      required final List<T> data})
      : _data = data;

  factory _$ListWrapperImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ListWrapperImplFromJson(json, fromJsonT);

  @override
  final String object;
  @override
  @JsonKey(name: 'has_more')
  final bool hasMore;
  @override
  @JsonKey(name: 'next_page')
  final Uri? nextPage;
  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ListWrapper<$T>(object: $object, hasMore: $hasMore, nextPage: $nextPage, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ListWrapper<$T>'))
      ..add(DiagnosticsProperty('object', object))
      ..add(DiagnosticsProperty('hasMore', hasMore))
      ..add(DiagnosticsProperty('nextPage', nextPage))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListWrapperImpl<T> &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, object, hasMore, nextPage,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListWrapperImplCopyWith<T, _$ListWrapperImpl<T>> get copyWith =>
      __$$ListWrapperImplCopyWithImpl<T, _$ListWrapperImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ListWrapperImplToJson<T>(this, toJsonT);
  }
}

abstract class _ListWrapper<T> implements ListWrapper<T> {
  const factory _ListWrapper(
      {required final String object,
      @JsonKey(name: 'has_more') required final bool hasMore,
      @JsonKey(name: 'next_page') final Uri? nextPage,
      required final List<T> data}) = _$ListWrapperImpl<T>;

  factory _ListWrapper.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ListWrapperImpl<T>.fromJson;

  @override
  String get object;
  @override
  @JsonKey(name: 'has_more')
  bool get hasMore;
  @override
  @JsonKey(name: 'next_page')
  Uri? get nextPage;
  @override
  List<T> get data;
  @override
  @JsonKey(ignore: true)
  _$$ListWrapperImplCopyWith<T, _$ListWrapperImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
