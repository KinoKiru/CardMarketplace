// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../symbol.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardSymbol _$CardSymbolFromJson(Map<String, dynamic> json) {
  return _CardSymbol.fromJson(json);
}

/// @nodoc
mixin _$CardSymbol {
  String get object => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'svg_uri')
  Uri? get svgUri => throw _privateConstructorUsedError;
  @JsonKey(name: 'loose_variant')
  String? get looseVariant => throw _privateConstructorUsedError;
  String get english => throw _privateConstructorUsedError;
  @JsonKey(name: 'represents_mana')
  bool get representsMana => throw _privateConstructorUsedError;
  @ManaCost()
  @JsonKey(name: 'mana_value')
  double? get manaValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'appears_in_mana_costs')
  bool get appearsInManaCosts => throw _privateConstructorUsedError;
  bool get funny => throw _privateConstructorUsedError;
  List<String>? get colors => throw _privateConstructorUsedError;
  bool get hybrid => throw _privateConstructorUsedError;
  bool get phyrexian => throw _privateConstructorUsedError;
  @JsonKey(name: 'gatherer_alternates')
  List<String>? get gathererAlternates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardSymbolCopyWith<CardSymbol> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardSymbolCopyWith<$Res> {
  factory $CardSymbolCopyWith(
          CardSymbol value, $Res Function(CardSymbol) then) =
      _$CardSymbolCopyWithImpl<$Res, CardSymbol>;
  @useResult
  $Res call(
      {String object,
      String symbol,
      @JsonKey(name: 'svg_uri') Uri? svgUri,
      @JsonKey(name: 'loose_variant') String? looseVariant,
      String english,
      @JsonKey(name: 'represents_mana') bool representsMana,
      @ManaCost() @JsonKey(name: 'mana_value') double? manaValue,
      @JsonKey(name: 'appears_in_mana_costs') bool appearsInManaCosts,
      bool funny,
      List<String>? colors,
      bool hybrid,
      bool phyrexian,
      @JsonKey(name: 'gatherer_alternates') List<String>? gathererAlternates});
}

/// @nodoc
class _$CardSymbolCopyWithImpl<$Res, $Val extends CardSymbol>
    implements $CardSymbolCopyWith<$Res> {
  _$CardSymbolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? object = null,
    Object? symbol = null,
    Object? svgUri = freezed,
    Object? looseVariant = freezed,
    Object? english = null,
    Object? representsMana = null,
    Object? manaValue = freezed,
    Object? appearsInManaCosts = null,
    Object? funny = null,
    Object? colors = freezed,
    Object? hybrid = null,
    Object? phyrexian = null,
    Object? gathererAlternates = freezed,
  }) {
    return _then(_value.copyWith(
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      svgUri: freezed == svgUri
          ? _value.svgUri
          : svgUri // ignore: cast_nullable_to_non_nullable
              as Uri?,
      looseVariant: freezed == looseVariant
          ? _value.looseVariant
          : looseVariant // ignore: cast_nullable_to_non_nullable
              as String?,
      english: null == english
          ? _value.english
          : english // ignore: cast_nullable_to_non_nullable
              as String,
      representsMana: null == representsMana
          ? _value.representsMana
          : representsMana // ignore: cast_nullable_to_non_nullable
              as bool,
      manaValue: freezed == manaValue
          ? _value.manaValue
          : manaValue // ignore: cast_nullable_to_non_nullable
              as double?,
      appearsInManaCosts: null == appearsInManaCosts
          ? _value.appearsInManaCosts
          : appearsInManaCosts // ignore: cast_nullable_to_non_nullable
              as bool,
      funny: null == funny
          ? _value.funny
          : funny // ignore: cast_nullable_to_non_nullable
              as bool,
      colors: freezed == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      hybrid: null == hybrid
          ? _value.hybrid
          : hybrid // ignore: cast_nullable_to_non_nullable
              as bool,
      phyrexian: null == phyrexian
          ? _value.phyrexian
          : phyrexian // ignore: cast_nullable_to_non_nullable
              as bool,
      gathererAlternates: freezed == gathererAlternates
          ? _value.gathererAlternates
          : gathererAlternates // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardSymbolImplCopyWith<$Res>
    implements $CardSymbolCopyWith<$Res> {
  factory _$$CardSymbolImplCopyWith(
          _$CardSymbolImpl value, $Res Function(_$CardSymbolImpl) then) =
      __$$CardSymbolImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String object,
      String symbol,
      @JsonKey(name: 'svg_uri') Uri? svgUri,
      @JsonKey(name: 'loose_variant') String? looseVariant,
      String english,
      @JsonKey(name: 'represents_mana') bool representsMana,
      @ManaCost() @JsonKey(name: 'mana_value') double? manaValue,
      @JsonKey(name: 'appears_in_mana_costs') bool appearsInManaCosts,
      bool funny,
      List<String>? colors,
      bool hybrid,
      bool phyrexian,
      @JsonKey(name: 'gatherer_alternates') List<String>? gathererAlternates});
}

/// @nodoc
class __$$CardSymbolImplCopyWithImpl<$Res>
    extends _$CardSymbolCopyWithImpl<$Res, _$CardSymbolImpl>
    implements _$$CardSymbolImplCopyWith<$Res> {
  __$$CardSymbolImplCopyWithImpl(
      _$CardSymbolImpl _value, $Res Function(_$CardSymbolImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? object = null,
    Object? symbol = null,
    Object? svgUri = freezed,
    Object? looseVariant = freezed,
    Object? english = null,
    Object? representsMana = null,
    Object? manaValue = freezed,
    Object? appearsInManaCosts = null,
    Object? funny = null,
    Object? colors = freezed,
    Object? hybrid = null,
    Object? phyrexian = null,
    Object? gathererAlternates = freezed,
  }) {
    return _then(_$CardSymbolImpl(
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      svgUri: freezed == svgUri
          ? _value.svgUri
          : svgUri // ignore: cast_nullable_to_non_nullable
              as Uri?,
      looseVariant: freezed == looseVariant
          ? _value.looseVariant
          : looseVariant // ignore: cast_nullable_to_non_nullable
              as String?,
      english: null == english
          ? _value.english
          : english // ignore: cast_nullable_to_non_nullable
              as String,
      representsMana: null == representsMana
          ? _value.representsMana
          : representsMana // ignore: cast_nullable_to_non_nullable
              as bool,
      manaValue: freezed == manaValue
          ? _value.manaValue
          : manaValue // ignore: cast_nullable_to_non_nullable
              as double?,
      appearsInManaCosts: null == appearsInManaCosts
          ? _value.appearsInManaCosts
          : appearsInManaCosts // ignore: cast_nullable_to_non_nullable
              as bool,
      funny: null == funny
          ? _value.funny
          : funny // ignore: cast_nullable_to_non_nullable
              as bool,
      colors: freezed == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      hybrid: null == hybrid
          ? _value.hybrid
          : hybrid // ignore: cast_nullable_to_non_nullable
              as bool,
      phyrexian: null == phyrexian
          ? _value.phyrexian
          : phyrexian // ignore: cast_nullable_to_non_nullable
              as bool,
      gathererAlternates: freezed == gathererAlternates
          ? _value._gathererAlternates
          : gathererAlternates // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardSymbolImpl with DiagnosticableTreeMixin implements _CardSymbol {
  const _$CardSymbolImpl(
      {required this.object,
      required this.symbol,
      @JsonKey(name: 'svg_uri') this.svgUri,
      @JsonKey(name: 'loose_variant') this.looseVariant,
      required this.english,
      @JsonKey(name: 'represents_mana') required this.representsMana,
      @ManaCost() @JsonKey(name: 'mana_value') this.manaValue,
      @JsonKey(name: 'appears_in_mana_costs') required this.appearsInManaCosts,
      required this.funny,
      required final List<String>? colors,
      required this.hybrid,
      required this.phyrexian,
      @JsonKey(name: 'gatherer_alternates')
      final List<String>? gathererAlternates})
      : _colors = colors,
        _gathererAlternates = gathererAlternates;

  factory _$CardSymbolImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardSymbolImplFromJson(json);

  @override
  final String object;
  @override
  final String symbol;
  @override
  @JsonKey(name: 'svg_uri')
  final Uri? svgUri;
  @override
  @JsonKey(name: 'loose_variant')
  final String? looseVariant;
  @override
  final String english;
  @override
  @JsonKey(name: 'represents_mana')
  final bool representsMana;
  @override
  @ManaCost()
  @JsonKey(name: 'mana_value')
  final double? manaValue;
  @override
  @JsonKey(name: 'appears_in_mana_costs')
  final bool appearsInManaCosts;
  @override
  final bool funny;
  final List<String>? _colors;
  @override
  List<String>? get colors {
    final value = _colors;
    if (value == null) return null;
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool hybrid;
  @override
  final bool phyrexian;
  final List<String>? _gathererAlternates;
  @override
  @JsonKey(name: 'gatherer_alternates')
  List<String>? get gathererAlternates {
    final value = _gathererAlternates;
    if (value == null) return null;
    if (_gathererAlternates is EqualUnmodifiableListView)
      return _gathererAlternates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CardSymbol(object: $object, symbol: $symbol, svgUri: $svgUri, looseVariant: $looseVariant, english: $english, representsMana: $representsMana, manaValue: $manaValue, appearsInManaCosts: $appearsInManaCosts, funny: $funny, colors: $colors, hybrid: $hybrid, phyrexian: $phyrexian, gathererAlternates: $gathererAlternates)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CardSymbol'))
      ..add(DiagnosticsProperty('object', object))
      ..add(DiagnosticsProperty('symbol', symbol))
      ..add(DiagnosticsProperty('svgUri', svgUri))
      ..add(DiagnosticsProperty('looseVariant', looseVariant))
      ..add(DiagnosticsProperty('english', english))
      ..add(DiagnosticsProperty('representsMana', representsMana))
      ..add(DiagnosticsProperty('manaValue', manaValue))
      ..add(DiagnosticsProperty('appearsInManaCosts', appearsInManaCosts))
      ..add(DiagnosticsProperty('funny', funny))
      ..add(DiagnosticsProperty('colors', colors))
      ..add(DiagnosticsProperty('hybrid', hybrid))
      ..add(DiagnosticsProperty('phyrexian', phyrexian))
      ..add(DiagnosticsProperty('gathererAlternates', gathererAlternates));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardSymbolImpl &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.svgUri, svgUri) || other.svgUri == svgUri) &&
            (identical(other.looseVariant, looseVariant) ||
                other.looseVariant == looseVariant) &&
            (identical(other.english, english) || other.english == english) &&
            (identical(other.representsMana, representsMana) ||
                other.representsMana == representsMana) &&
            (identical(other.manaValue, manaValue) ||
                other.manaValue == manaValue) &&
            (identical(other.appearsInManaCosts, appearsInManaCosts) ||
                other.appearsInManaCosts == appearsInManaCosts) &&
            (identical(other.funny, funny) || other.funny == funny) &&
            const DeepCollectionEquality().equals(other._colors, _colors) &&
            (identical(other.hybrid, hybrid) || other.hybrid == hybrid) &&
            (identical(other.phyrexian, phyrexian) ||
                other.phyrexian == phyrexian) &&
            const DeepCollectionEquality()
                .equals(other._gathererAlternates, _gathererAlternates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      object,
      symbol,
      svgUri,
      looseVariant,
      english,
      representsMana,
      manaValue,
      appearsInManaCosts,
      funny,
      const DeepCollectionEquality().hash(_colors),
      hybrid,
      phyrexian,
      const DeepCollectionEquality().hash(_gathererAlternates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardSymbolImplCopyWith<_$CardSymbolImpl> get copyWith =>
      __$$CardSymbolImplCopyWithImpl<_$CardSymbolImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardSymbolImplToJson(
      this,
    );
  }
}

abstract class _CardSymbol implements CardSymbol {
  const factory _CardSymbol(
      {required final String object,
      required final String symbol,
      @JsonKey(name: 'svg_uri') final Uri? svgUri,
      @JsonKey(name: 'loose_variant') final String? looseVariant,
      required final String english,
      @JsonKey(name: 'represents_mana') required final bool representsMana,
      @ManaCost() @JsonKey(name: 'mana_value') final double? manaValue,
      @JsonKey(name: 'appears_in_mana_costs')
      required final bool appearsInManaCosts,
      required final bool funny,
      required final List<String>? colors,
      required final bool hybrid,
      required final bool phyrexian,
      @JsonKey(name: 'gatherer_alternates')
      final List<String>? gathererAlternates}) = _$CardSymbolImpl;

  factory _CardSymbol.fromJson(Map<String, dynamic> json) =
      _$CardSymbolImpl.fromJson;

  @override
  String get object;
  @override
  String get symbol;
  @override
  @JsonKey(name: 'svg_uri')
  Uri? get svgUri;
  @override
  @JsonKey(name: 'loose_variant')
  String? get looseVariant;
  @override
  String get english;
  @override
  @JsonKey(name: 'represents_mana')
  bool get representsMana;
  @override
  @ManaCost()
  @JsonKey(name: 'mana_value')
  double? get manaValue;
  @override
  @JsonKey(name: 'appears_in_mana_costs')
  bool get appearsInManaCosts;
  @override
  bool get funny;
  @override
  List<String>? get colors;
  @override
  bool get hybrid;
  @override
  bool get phyrexian;
  @override
  @JsonKey(name: 'gatherer_alternates')
  List<String>? get gathererAlternates;
  @override
  @JsonKey(ignore: true)
  _$$CardSymbolImplCopyWith<_$CardSymbolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
