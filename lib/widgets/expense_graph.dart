import 'package:budget_builder/models/expense.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExpenseGraph extends ConsumerWidget {
  const ExpenseGraph({super.key, required this.expenses});

  final List<ExpenseModel> expenses;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 200,
      child: const Placeholder(),
    );
  }
}
