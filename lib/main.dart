import 'package:budget_builder/providers/theme_provider.dart';
import 'package:budget_builder/pages/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: BudgetBuilderApp()));
}

class BudgetBuilderApp extends ConsumerWidget {
  const BudgetBuilderApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appTheme);

    return MaterialApp(
      title: 'PokePlanner',
      theme: theme,
      home: const MainScreen(),
    );
  }
}
