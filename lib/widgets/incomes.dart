import 'package:budget_builder/models/income.dart';
import 'package:budget_builder/widgets/add_income.dart';
import 'package:budget_builder/widgets/income_card.dart';
import 'package:flutter/material.dart';

class Incomes extends StatelessWidget {
  const Incomes({super.key, required this.incomes});
  final List<IncomeModel> incomes;

  double _getTotalIncome() {
    if (incomes.isEmpty) return 0;
    return incomes.map((i) => i.income).reduce((val, income) => val + income);
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        'Incomes',
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ),
      expandedCrossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Income: ${_getTotalIncome()}',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
              IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context, builder: (ctx) => const AddIncome());
                },
                icon: const Icon(
                  Icons.add,
                  size: 20,
                ),
              ),
            ],
          ),
        ),
        if (incomes.isNotEmpty)
          for (IncomeModel income in incomes) IncomeCard(income: income)
        else
          Card(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              child: Text(
                'No Income',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
            ),
          ),
      ],
    );
  }
}
