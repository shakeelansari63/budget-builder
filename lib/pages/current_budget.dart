import 'package:budget_builder/providers/current_budget_provider.dart';
import 'package:budget_builder/widgets/expense_graph.dart';
import 'package:budget_builder/widgets/expenses.dart';
import 'package:budget_builder/widgets/incomes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrentBudget extends ConsumerWidget {
  const CurrentBudget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentBudget = ref.watch(currentBudgetProvider);

    return Column(
      children: [
        ExpenseGraph(
          expenses: currentBudget.expenses,
        ),
        Expanded(
          child: ListView(
            children: [
              Incomes(
                incomes: currentBudget.incomes,
              ),
              Expenses(
                expenses: currentBudget.expenses,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
