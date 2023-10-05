import 'package:expenses_tracker/expenses_list.dart';
import 'package:expenses_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: "flutter course",
        amount: 90.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: "cinema ticket",
        amount: 15.69,
        date: DateTime.now(),
        category: Category.leisure)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Text("fyguhijo"),
        Expanded(
          child: ExpensesList(expenses: _registeredExpenses),
        )
      ]),
    );
  }
}
