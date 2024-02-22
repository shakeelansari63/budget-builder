import 'package:budget_builder/models/expense.dart';
import 'package:budget_builder/widgets/add_expense.dart';
import 'package:budget_builder/widgets/expense_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Expenses extends ConsumerWidget {
  const Expenses({super.key, required this.expenses});
  final List<ExpenseModel> expenses;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Expenses',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context, builder: (ctx) => const AddExpense());
                },
                icon: const Icon(Icons.add),
              ),
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: expenses.length,
          itemBuilder: (ctx, idx) => ExpenseCard(expense: expenses[idx]),
        ),
      ],
    );
  }
}
