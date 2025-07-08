import 'package:dark_mode_shad/colors.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:flutter/material.dart';

class MyCustomColorScheme extends ShadColorScheme {
  const MyCustomColorScheme({
    required super.background,
    required super.foreground,
    required super.card,
    required super.cardForeground,
    required super.popover,
    required super.popoverForeground,
    required super.primary,
    required super.primaryForeground,
    required super.secondary,
    required super.secondaryForeground,
    required super.muted,
    required super.mutedForeground,
    required super.accent,
    required super.accentForeground,
    required super.destructive,
    required super.destructiveForeground,
    required super.border,
    required super.input,
    required super.ring,
    required super.selection,
  });

  const MyCustomColorScheme.light({
    super.background = const Color(0xffffffff),
    super.foreground = Colors.pinkAccent,
    super.card = const Color(0xffffffff),
    super.cardForeground = const Color(0xff020817),
    super.popover = const Color(0xffffffff),
    super.popoverForeground = const Color(0xff020817),
    super.primary = const Color(0xff2563eb),
    super.primaryForeground = const Color(0xfff8fafc),
    super.secondary = const Color(0xfff1f5f9),
    super.secondaryForeground = const Color(0xff0f172a),
    super.muted = const Color(0xfff1f5f9),
    super.mutedForeground = const Color(0xff64748b),
    super.accent = const Color(0xfff1f5f9),
    super.accentForeground = const Color(0xff0f172a),
    super.destructive = const Color(0xffef4444),
    super.destructiveForeground = const Color(0xfff8fafc),
    super.border = const Color(0xffe2e8f0),
    super.input = const Color(0xffe2e8f0),
    super.ring = const Color(0xff2563eb),
    super.selection = const Color(0xFFB4D7FF),
  });
  const MyCustomColorScheme.dark({
    super.background = const Color(0xffffffff),
    super.foreground = Colors.red,
    super.card = const Color(0xffffffff),
    super.cardForeground = const Color(0xff020817),
    super.popover = const Color(0xffffffff),
    super.popoverForeground = const Color(0xff020817),
    super.primary = const Color(0xff2563eb),
    super.primaryForeground = const Color(0xfff8fafc),
    super.secondary = const Color(0xfff1f5f9),
    super.secondaryForeground = const Color(0xff0f172a),
    super.muted = const Color(0xfff1f5f9),
    super.mutedForeground = const Color(0xff64748b),
    super.accent = const Color(0xfff1f5f9),
    super.accentForeground = const Color(0xff0f172a),
    super.destructive = const Color(0xffef4444),
    super.destructiveForeground = const Color(0xfff8fafc),
    super.border = const Color(0xffe2e8f0),
    super.input = const Color(0xffe2e8f0),
    super.ring = const Color(0xff2563eb),
    super.selection = const Color(0xFFB4D7FF),
  });
}
final customColor = ShadColorScheme(
  background: MyColors.primary,
  foreground: Colors.green,
  card: Colors.red,
  cardForeground: Colors.white,
  popover: Colors.pink,
  popoverForeground: Colors.pinkAccent,

  // Required colors — define or replace with your own values
  primary: Color(0xFF1E88E5),
  primaryForeground: Colors.white,

  secondary: Color(0xFF8E24AA),
  secondaryForeground: Colors.white,

  muted: Colors.grey.shade800,
  mutedForeground: Colors.grey.shade300,

  accent: Colors.amber,
  accentForeground: Colors.black,

  destructive: Colors.red,
  destructiveForeground: Colors.white,

  border: Colors.grey.shade700,
  input: Colors.grey.shade900,
  ring: Colors.tealAccent,
  selection: Colors.teal, // Add your desired selection color
);