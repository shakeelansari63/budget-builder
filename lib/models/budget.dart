import 'package:budget_builder/models/expense.dart';
import 'package:budget_builder/models/income.dart';

class BudgetModel {
  BudgetModel({
    required this.id,
    required this.name,
    required this.periodStart,
    required this.periodEnd,
    required this.isCurrent,
    required this.incomes,
    required this.expenses,
  });

  int id;
  String name;
  DateTime periodStart;
  DateTime periodEnd;
  bool isCurrent;
  List<IncomeModel> incomes;
  List<ExpenseModel> expenses;
}
