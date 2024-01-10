import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Used in card.dart
enum ImageStatus {
  @JsonValue('missing')
  missing,
  @JsonValue('placeholder')
  placeholder,
  @JsonValue('lowres')
  lowRes,
  @JsonValue('highres_scan')
  highResScan
}

// Used in navigation.dart
class NavigationItem {
  const NavigationItem(this.label, this.icon, this.screen);
  final Widget label;
  final Widget icon;
  final Widget screen;
}
