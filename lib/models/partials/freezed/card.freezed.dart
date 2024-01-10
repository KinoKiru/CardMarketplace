// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Card _$CardFromJson(Map<String, dynamic> json) {
  return _Card.fromJson(json);
}

/// @nodoc
mixin _$Card {
// Core Card fields
  @UUID()
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'object')
  String get type => throw _privateConstructorUsedError;
  @UUID()
  String? get oracleId => throw _privateConstructorUsedError;
  List<int>? get multiverseIds => throw _privateConstructorUsedError;
  int? get mtgoId => throw _privateConstructorUsedError;
  int? get tcgplayerId => throw _privateConstructorUsedError;
  int? get cardmarketId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lang')
  String get language => throw _privateConstructorUsedError;
  Uri get uri => throw _privateConstructorUsedError;
  Uri get scryfallUri => throw _privateConstructorUsedError;
  String get layout => throw _privateConstructorUsedError; // Gameplay fields
  String get name => throw _privateConstructorUsedError; // Print fields
// TODO custom converter and jiffy
  DateTime get releasedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'highres_image')
  bool get highResImage => throw _privateConstructorUsedError;
  @JsonEnum()
  ImageStatus get imageStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardCopyWith<Card> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardCopyWith<$Res> {
  factory $CardCopyWith(Card value, $Res Function(Card) then) =
      _$CardCopyWithImpl<$Res, Card>;
  @useResult
  $Res call(
      {@UUID() String id,
      @JsonKey(name: 'object') String type,
      @UUID() String? oracleId,
      List<int>? multiverseIds,
      int? mtgoId,
      int? tcgplayerId,
      int? cardmarketId,
      @JsonKey(name: 'lang') String language,
      Uri uri,
      Uri scryfallUri,
      String layout,
      String name,
      DateTime releasedAt,
      @JsonKey(name: 'highres_image') bool highResImage,
      @JsonEnum() ImageStatus imageStatus});
}

/// @nodoc
class _$CardCopyWithImpl<$Res, $Val extends Card>
    implements $CardCopyWith<$Res> {
  _$CardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? oracleId = freezed,
    Object? multiverseIds = freezed,
    Object? mtgoId = freezed,
    Object? tcgplayerId = freezed,
    Object? cardmarketId = freezed,
    Object? language = null,
    Object? uri = null,
    Object? scryfallUri = null,
    Object? layout = null,
    Object? name = null,
    Object? releasedAt = null,
    Object? highResImage = null,
    Object? imageStatus = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      oracleId: freezed == oracleId
          ? _value.oracleId
          : oracleId // ignore: cast_nullable_to_non_nullable
              as String?,
      multiverseIds: freezed == multiverseIds
          ? _value.multiverseIds
          : multiverseIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      mtgoId: freezed == mtgoId
          ? _value.mtgoId
          : mtgoId // ignore: cast_nullable_to_non_nullable
              as int?,
      tcgplayerId: freezed == tcgplayerId
          ? _value.tcgplayerId
          : tcgplayerId // ignore: cast_nullable_to_non_nullable
              as int?,
      cardmarketId: freezed == cardmarketId
          ? _value.cardmarketId
          : cardmarketId // ignore: cast_nullable_to_non_nullable
              as int?,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      scryfallUri: null == scryfallUri
          ? _value.scryfallUri
          : scryfallUri // ignore: cast_nullable_to_non_nullable
              as Uri,
      layout: null == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      releasedAt: null == releasedAt
          ? _value.releasedAt
          : releasedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      highResImage: null == highResImage
          ? _value.highResImage
          : highResImage // ignore: cast_nullable_to_non_nullable
              as bool,
      imageStatus: null == imageStatus
          ? _value.imageStatus
          : imageStatus // ignore: cast_nullable_to_non_nullable
              as ImageStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardImplCopyWith<$Res> implements $CardCopyWith<$Res> {
  factory _$$CardImplCopyWith(
          _$CardImpl value, $Res Function(_$CardImpl) then) =
      __$$CardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@UUID() String id,
      @JsonKey(name: 'object') String type,
      @UUID() String? oracleId,
      List<int>? multiverseIds,
      int? mtgoId,
      int? tcgplayerId,
      int? cardmarketId,
      @JsonKey(name: 'lang') String language,
      Uri uri,
      Uri scryfallUri,
      String layout,
      String name,
      DateTime releasedAt,
      @JsonKey(name: 'highres_image') bool highResImage,
      @JsonEnum() ImageStatus imageStatus});
}

/// @nodoc
class __$$CardImplCopyWithImpl<$Res>
    extends _$CardCopyWithImpl<$Res, _$CardImpl>
    implements _$$CardImplCopyWith<$Res> {
  __$$CardImplCopyWithImpl(_$CardImpl _value, $Res Function(_$CardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? oracleId = freezed,
    Object? multiverseIds = freezed,
    Object? mtgoId = freezed,
    Object? tcgplayerId = freezed,
    Object? cardmarketId = freezed,
    Object? language = null,
    Object? uri = null,
    Object? scryfallUri = null,
    Object? layout = null,
    Object? name = null,
    Object? releasedAt = null,
    Object? highResImage = null,
    Object? imageStatus = null,
  }) {
    return _then(_$CardImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      oracleId: freezed == oracleId
          ? _value.oracleId
          : oracleId // ignore: cast_nullable_to_non_nullable
              as String?,
      multiverseIds: freezed == multiverseIds
          ? _value._multiverseIds
          : multiverseIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      mtgoId: freezed == mtgoId
          ? _value.mtgoId
          : mtgoId // ignore: cast_nullable_to_non_nullable
              as int?,
      tcgplayerId: freezed == tcgplayerId
          ? _value.tcgplayerId
          : tcgplayerId // ignore: cast_nullable_to_non_nullable
              as int?,
      cardmarketId: freezed == cardmarketId
          ? _value.cardmarketId
          : cardmarketId // ignore: cast_nullable_to_non_nullable
              as int?,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      scryfallUri: null == scryfallUri
          ? _value.scryfallUri
          : scryfallUri // ignore: cast_nullable_to_non_nullable
              as Uri,
      layout: null == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      releasedAt: null == releasedAt
          ? _value.releasedAt
          : releasedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      highResImage: null == highResImage
          ? _value.highResImage
          : highResImage // ignore: cast_nullable_to_non_nullable
              as bool,
      imageStatus: null == imageStatus
          ? _value.imageStatus
          : imageStatus // ignore: cast_nullable_to_non_nullable
              as ImageStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardImpl with DiagnosticableTreeMixin implements _Card {
  const _$CardImpl(
      {@UUID() required this.id,
      @JsonKey(name: 'object') required this.type,
      @UUID() this.oracleId,
      final List<int>? multiverseIds,
      this.mtgoId,
      this.tcgplayerId,
      this.cardmarketId,
      @JsonKey(name: 'lang') required this.language,
      required this.uri,
      required this.scryfallUri,
      required this.layout,
      required this.name,
      required this.releasedAt,
      @JsonKey(name: 'highres_image') required this.highResImage,
      @JsonEnum() required this.imageStatus})
      : _multiverseIds = multiverseIds;

  factory _$CardImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardImplFromJson(json);

// Core Card fields
  @override
  @UUID()
  final String id;
  @override
  @JsonKey(name: 'object')
  final String type;
  @override
  @UUID()
  final String? oracleId;
  final List<int>? _multiverseIds;
  @override
  List<int>? get multiverseIds {
    final value = _multiverseIds;
    if (value == null) return null;
    if (_multiverseIds is EqualUnmodifiableListView) return _multiverseIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? mtgoId;
  @override
  final int? tcgplayerId;
  @override
  final int? cardmarketId;
  @override
  @JsonKey(name: 'lang')
  final String language;
  @override
  final Uri uri;
  @override
  final Uri scryfallUri;
  @override
  final String layout;
// Gameplay fields
  @override
  final String name;
// Print fields
// TODO custom converter and jiffy
  @override
  final DateTime releasedAt;
  @override
  @JsonKey(name: 'highres_image')
  final bool highResImage;
  @override
  @JsonEnum()
  final ImageStatus imageStatus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Card(id: $id, type: $type, oracleId: $oracleId, multiverseIds: $multiverseIds, mtgoId: $mtgoId, tcgplayerId: $tcgplayerId, cardmarketId: $cardmarketId, language: $language, uri: $uri, scryfallUri: $scryfallUri, layout: $layout, name: $name, releasedAt: $releasedAt, highResImage: $highResImage, imageStatus: $imageStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Card'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('oracleId', oracleId))
      ..add(DiagnosticsProperty('multiverseIds', multiverseIds))
      ..add(DiagnosticsProperty('mtgoId', mtgoId))
      ..add(DiagnosticsProperty('tcgplayerId', tcgplayerId))
      ..add(DiagnosticsProperty('cardmarketId', cardmarketId))
      ..add(DiagnosticsProperty('language', language))
      ..add(DiagnosticsProperty('uri', uri))
      ..add(DiagnosticsProperty('scryfallUri', scryfallUri))
      ..add(DiagnosticsProperty('layout', layout))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('releasedAt', releasedAt))
      ..add(DiagnosticsProperty('highResImage', highResImage))
      ..add(DiagnosticsProperty('imageStatus', imageStatus));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.oracleId, oracleId) ||
                other.oracleId == oracleId) &&
            const DeepCollectionEquality()
                .equals(other._multiverseIds, _multiverseIds) &&
            (identical(other.mtgoId, mtgoId) || other.mtgoId == mtgoId) &&
            (identical(other.tcgplayerId, tcgplayerId) ||
                other.tcgplayerId == tcgplayerId) &&
            (identical(other.cardmarketId, cardmarketId) ||
                other.cardmarketId == cardmarketId) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.scryfallUri, scryfallUri) ||
                other.scryfallUri == scryfallUri) &&
            (identical(other.layout, layout) || other.layout == layout) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.releasedAt, releasedAt) ||
                other.releasedAt == releasedAt) &&
            (identical(other.highResImage, highResImage) ||
                other.highResImage == highResImage) &&
            (identical(other.imageStatus, imageStatus) ||
                other.imageStatus == imageStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      oracleId,
      const DeepCollectionEquality().hash(_multiverseIds),
      mtgoId,
      tcgplayerId,
      cardmarketId,
      language,
      uri,
      scryfallUri,
      layout,
      name,
      releasedAt,
      highResImage,
      imageStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardImplCopyWith<_$CardImpl> get copyWith =>
      __$$CardImplCopyWithImpl<_$CardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardImplToJson(
      this,
    );
  }
}

abstract class _Card implements Card {
  const factory _Card(
      {@UUID() required final String id,
      @JsonKey(name: 'object') required final String type,
      @UUID() final String? oracleId,
      final List<int>? multiverseIds,
      final int? mtgoId,
      final int? tcgplayerId,
      final int? cardmarketId,
      @JsonKey(name: 'lang') required final String language,
      required final Uri uri,
      required final Uri scryfallUri,
      required final String layout,
      required final String name,
      required final DateTime releasedAt,
      @JsonKey(name: 'highres_image') required final bool highResImage,
      @JsonEnum() required final ImageStatus imageStatus}) = _$CardImpl;

  factory _Card.fromJson(Map<String, dynamic> json) = _$CardImpl.fromJson;

  @override // Core Card fields
  @UUID()
  String get id;
  @override
  @JsonKey(name: 'object')
  String get type;
  @override
  @UUID()
  String? get oracleId;
  @override
  List<int>? get multiverseIds;
  @override
  int? get mtgoId;
  @override
  int? get tcgplayerId;
  @override
  int? get cardmarketId;
  @override
  @JsonKey(name: 'lang')
  String get language;
  @override
  Uri get uri;
  @override
  Uri get scryfallUri;
  @override
  String get layout;
  @override // Gameplay fields
  String get name;
  @override // Print fields
// TODO custom converter and jiffy
  DateTime get releasedAt;
  @override
  @JsonKey(name: 'highres_image')
  bool get highResImage;
  @override
  @JsonEnum()
  ImageStatus get imageStatus;
  @override
  @JsonKey(ignore: true)
  _$$CardImplCopyWith<_$CardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
