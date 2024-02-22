import 'package:budget_builder/models/budget.dart';
import 'package:budget_builder/models/expenditure.dart';
import 'package:budget_builder/models/expense.dart';
import 'package:budget_builder/models/income.dart';

final allBudgets = [
  BudgetModel(
    id: 1,
    name: 'My Budget 1',
    periodStart: DateTime(2023, 11, 1, 0, 0, 0),
    periodEnd: DateTime(2023, 11, 30, 0, 0, 0),
    isCurrent: false,
    incomes: [
      IncomeModel(
        id: 1,
        source: 'Regular',
        income: 120000,
      ),
      IncomeModel(
        id: 2,
        source: 'Freelance',
        income: 10000,
      ),
    ],
    expenses: [
      ExpenseModel(
        id: 1,
        name: 'Home Use',
        amount: 25000,
        expenditures: [
          ExpenditureModel(
            id: 1,
            name: 'Used',
            amount: 10000,
          ),
          ExpenditureModel(
            id: 2,
            name: 'Used',
            amount: 15000,
          ),
        ],
      ),
      ExpenseModel(
        id: 2,
        name: 'Rent',
        amount: 18000,
        expenditures: [],
      ),
      ExpenseModel(
        id: 3,
        name: 'Car work',
        amount: 5000,
        expenditures: [],
      ),
      ExpenseModel(
        id: 3,
        name: 'Home Transfer',
        amount: 3000,
        expenditures: [],
      ),
    ],
  ),
  BudgetModel(
    id: 2,
    name: 'My Budget 2',
    periodStart: DateTime(2023, 12, 1, 0, 0, 0),
    periodEnd: DateTime(2023, 12, 31, 0, 0, 0),
    isCurrent: false,
    incomes: [
      IncomeModel(
        id: 1,
        source: 'Regular',
        income: 120000,
      ),
      IncomeModel(
        id: 2,
        source: 'Freelance',
        income: 10000,
      ),
    ],
    expenses: [
      ExpenseModel(
        id: 1,
        name: 'Home Use',
        amount: 25000,
        expenditures: [
          ExpenditureModel(
            id: 1,
            name: 'Used',
            amount: 25000,
          ),
        ],
      ),
      ExpenseModel(
        id: 2,
        name: 'Rent',
        amount: 18000,
        expenditures: [],
      ),
      ExpenseModel(
        id: 3,
        name: 'Home Transfer',
        amount: 3000,
        expenditures: [],
      ),
    ],
  ),
  BudgetModel(
    id: 3,
    name: 'My Budget 3',
    periodStart: DateTime(2024, 1, 1, 0, 0, 0),
    periodEnd: DateTime(2024, 1, 31, 0, 0, 0),
    isCurrent: false,
    incomes: [
      IncomeModel(
        id: 1,
        source: 'Regular',
        income: 120000,
      ),
      IncomeModel(
        id: 2,
        source: 'Freelance',
        income: 10000,
      ),
    ],
    expenses: [
      ExpenseModel(
        id: 1,
        name: 'Home Use',
        amount: 25000,
        expenditures: [
          ExpenditureModel(
            id: 1,
            name: 'Used',
            amount: 10000,
          ),
          ExpenditureModel(
            id: 1,
            name: 'Used',
            amount: 10000,
          ),
          ExpenditureModel(
            id: 1,
            name: 'Used',
            amount: 5000,
          ),
        ],
      ),
      ExpenseModel(
        id: 2,
        name: 'Rent',
        amount: 18000,
        expenditures: [],
      ),
      ExpenseModel(
        id: 3,
        name: 'Home Cleaning',
        amount: 2000,
        expenditures: [],
      ),
      ExpenseModel(
        id: 4,
        name: 'Home Transfer',
        amount: 3000,
        expenditures: [],
      ),
    ],
  ),
  BudgetModel(
    id: 4,
    name: 'My Budget 1',
    periodStart: DateTime(2024, 2, 1, 0, 0, 0),
    periodEnd: DateTime(2024, 2, 29, 0, 0, 0),
    isCurrent: true,
    incomes: [
      IncomeModel(
        id: 1,
        source: 'Regular',
        income: 120000,
      ),
      IncomeModel(
        id: 2,
        source: 'Freelance',
        income: 10000,
      ),
      IncomeModel(
        id: 3,
        source: 'Rent Money',
        income: 12000,
      ),
    ],
    expenses: [
      ExpenseModel(
        id: 1,
        name: 'Home Use',
        amount: 25000,
        expenditures: [
          ExpenditureModel(
            id: 1,
            name: 'Used',
            amount: 10000,
          ),
          ExpenditureModel(
            id: 2,
            name: 'Used',
            amount: 10000,
          ),
        ],
      ),
      ExpenseModel(
        id: 2,
        name: 'Rent',
        amount: 18000,
        expenditures: [],
      ),
      ExpenseModel(
        id: 3,
        name: 'Birthdays',
        amount: 5000,
        expenditures: [],
      ),
      ExpenseModel(
        id: 4,
        name: 'Home Transfer',
        amount: 3000,
        expenditures: [],
      ),
      ExpenseModel(
        id: 5,
        name: 'Other',
        amount: 10000,
        expenditures: [
          ExpenditureModel(
            id: 1,
            name: 'Used',
            amount: 200,
          ),
          ExpenditureModel(
            id: 2,
            name: 'Used',
            amount: 500,
          ),
        ],
      ),
    ],
  ),
];
