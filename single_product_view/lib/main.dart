import 'package:flutter/material.dart';
import 'package:single_product_view/views/employee_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EmployeeList(),
    );
  }
}
