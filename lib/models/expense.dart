import 'package:budget_builder/models/expenditure.dart';

class ExpenseModel {
  ExpenseModel({
    required this.id,
    required this.name,
    required this.amount,
    required this.expenditures,
  });

  int id;
  String name;
  double amount;
  List<ExpenditureModel> expenditures;
}
