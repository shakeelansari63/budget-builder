import 'package:budget_builder/providers/theme_provider.dart';
import 'package:budget_builder/widgets/current_budget.dart';
import 'package:budget_builder/widgets/history_budgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  // Initial Value
  int _selectedTab = 0;

  void changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    String title = 'Current Budget';
    Widget currentPage = const CurrentBudget();

    if (_selectedTab == 1) {
      title = 'History';
      currentPage = const HistoryBudgets();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
            onPressed: ref.read(appTheme.notifier).toggleTheme,
            icon: const Icon(Icons.brightness_4),
          ),
        ],
      ),
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'Current Budget',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
        ],
        onTap: changeTab,
        currentIndex: _selectedTab,
      ),
    );
  }
}
