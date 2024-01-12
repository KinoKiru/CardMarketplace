// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../card_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardList _$CardListFromJson(Map<String, dynamic> json) {
  return _CardList.fromJson(json);
}

/// @nodoc
mixin _$CardList {
  List<MagicCard> get data => throw _privateConstructorUsedError;
  String get object => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_more')
  bool get hasMore => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page')
  Uri? get nextPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardListCopyWith<CardList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardListCopyWith<$Res> {
  factory $CardListCopyWith(CardList value, $Res Function(CardList) then) =
      _$CardListCopyWithImpl<$Res, CardList>;
  @useResult
  $Res call(
      {List<MagicCard> data,
      String object,
      @JsonKey(name: 'has_more') bool hasMore,
      @JsonKey(name: 'next_page') Uri? nextPage});
}

/// @nodoc
class _$CardListCopyWithImpl<$Res, $Val extends CardList>
    implements $CardListCopyWith<$Res> {
  _$CardListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? object = null,
    Object? hasMore = null,
    Object? nextPage = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MagicCard>,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardListImplCopyWith<$Res>
    implements $CardListCopyWith<$Res> {
  factory _$$CardListImplCopyWith(
          _$CardListImpl value, $Res Function(_$CardListImpl) then) =
      __$$CardListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MagicCard> data,
      String object,
      @JsonKey(name: 'has_more') bool hasMore,
      @JsonKey(name: 'next_page') Uri? nextPage});
}

/// @nodoc
class __$$CardListImplCopyWithImpl<$Res>
    extends _$CardListCopyWithImpl<$Res, _$CardListImpl>
    implements _$$CardListImplCopyWith<$Res> {
  __$$CardListImplCopyWithImpl(
      _$CardListImpl _value, $Res Function(_$CardListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? object = null,
    Object? hasMore = null,
    Object? nextPage = freezed,
  }) {
    return _then(_$CardListImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MagicCard>,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
@override
class _$CardListImpl implements _CardList {
  const _$CardListImpl(
      {required final List<MagicCard> data,
      required this.object,
      @JsonKey(name: 'has_more') required this.hasMore,
      @JsonKey(name: 'next_page') this.nextPage})
      : _data = data;

  factory _$CardListImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardListImplFromJson(json);

  final List<MagicCard> _data;
  @override
  List<MagicCard> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String object;
  @override
  @JsonKey(name: 'has_more')
  final bool hasMore;
  @override
  @JsonKey(name: 'next_page')
  final Uri? nextPage;

  @override
  String toString() {
    return 'CardList(data: $data, object: $object, hasMore: $hasMore, nextPage: $nextPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardListImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), object, hasMore, nextPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardListImplCopyWith<_$CardListImpl> get copyWith =>
      __$$CardListImplCopyWithImpl<_$CardListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardListImplToJson(
      this,
    );
  }
}

abstract class _CardList implements CardList {
  const factory _CardList(
      {required final List<MagicCard> data,
      required final String object,
      @JsonKey(name: 'has_more') required final bool hasMore,
      @JsonKey(name: 'next_page') final Uri? nextPage}) = _$CardListImpl;

  factory _CardList.fromJson(Map<String, dynamic> json) =
      _$CardListImpl.fromJson;

  @override
  List<MagicCard> get data;
  @override
  String get object;
  @override
  @JsonKey(name: 'has_more')
  bool get hasMore;
  @override
  @JsonKey(name: 'next_page')
  Uri? get nextPage;
  @override
  @JsonKey(ignore: true)
  _$$CardListImplCopyWith<_$CardListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
