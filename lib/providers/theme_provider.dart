import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeBuilder(Brightness brightness) {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
      brightness: brightness,
      seedColor: Colors.deepPurple,
    ),
    useMaterial3: true,
    textTheme: GoogleFonts.latoTextTheme(),
  );
}

class ThemeStateNotifier extends StateNotifier<ThemeData> {
  ThemeStateNotifier() : super(themeBuilder(Brightness.light));

  void toggleTheme() {
    final currentTheme = state.colorScheme.brightness;

    if (currentTheme == Brightness.light) {
      state = themeBuilder(Brightness.dark);
    } else {
      state = themeBuilder(Brightness.light);
    }
  }
}

final appTheme = StateNotifierProvider<ThemeStateNotifier, ThemeData>(
    (ref) => ThemeStateNotifier());
