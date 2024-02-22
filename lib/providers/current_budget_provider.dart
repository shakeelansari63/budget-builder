import 'package:budget_builder/dummy_data.dart';
import 'package:budget_builder/models/budget.dart';
import 'package:budget_builder/models/expense.dart';
import 'package:budget_builder/models/income.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrentBudgetNotifier extends StateNotifier<BudgetModel> {
  CurrentBudgetNotifier()
      : super(allBudgets.where((budget) => budget.isCurrent).first);

  // Helper methods
  void _updateIncomes(List<IncomeModel> updatedIncomes) {
    // Sort by Id
    updatedIncomes.sort((i, j) => i.id.compareTo(j.id));

    // Update State
    state = BudgetModel(
      id: state.id,
      name: state.name,
      periodStart: state.periodStart,
      periodEnd: state.periodEnd,
      isCurrent: state.isCurrent,
      incomes: updatedIncomes,
      expenses: state.expenses,
    );
  }

  void _updateExpenses(List<ExpenseModel> updatedExpenses) {
    // Sort by Id
    updatedExpenses.sort((i, j) => i.id.compareTo(j.id));

    // Update State
    state = BudgetModel(
      id: state.id,
      name: state.name,
      periodStart: state.periodStart,
      periodEnd: state.periodEnd,
      isCurrent: state.isCurrent,
      incomes: state.incomes,
      expenses: updatedExpenses,
    );
  }

  // Add or Remove Incomes
  void addIncome(IncomeModel income) {
    //  Update Income Id
    income.id = state.incomes.last.id + 1;

    // Add Income
    final updatedIncomes = [...state.incomes, income];

    // Update Incomes
    _updateIncomes(updatedIncomes);
  }

  void removeIncome(IncomeModel income) {
    final updatedIncomes =
        state.incomes.where((i) => i.id != income.id).toList();

    // Update Incomes
    _updateIncomes(updatedIncomes);
  }

  void updateIncome(IncomeModel income) {
    // Remove existing
    final skipped = state.incomes.where((i) => i.id != income.id).toList();

    // Add Updated
    final updatedIncomes = [...skipped, income];

    // Update Incomes
    _updateIncomes(updatedIncomes);
  }

  // Add or Remove Expenses
  void addExpense(ExpenseModel expense) {
    // Update Expense Id
    expense.id = state.expenses.last.id + 1;

    // Generate updated expense list
    final updatedExpenses = [...state.expenses, expense];

    // Update Expenses
    _updateExpenses(updatedExpenses);
  }

  void removeExpense(ExpenseModel expense) {
    final updatedExpenses =
        state.expenses.where((e) => e.id != expense.id).toList();

    // Update Expenses
    _updateExpenses(updatedExpenses);
  }

  void updateExpense(ExpenseModel expense) {
    final skipped = state.expenses.where((e) => e.id != expense.id).toList();
    final updatedExpenses = [...skipped, expense];

    // Update Expenses
    _updateExpenses(updatedExpenses);
  }

  void changeBudget(int budgetId) {
    state = allBudgets.where((budget) => budget.id == budgetId).first;
  }
}

final currentBudgetProvider =
    StateNotifierProvider<CurrentBudgetNotifier, BudgetModel>(
  (ref) => CurrentBudgetNotifier(),
);
