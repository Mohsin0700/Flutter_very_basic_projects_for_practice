import 'package:flutter/material.dart';

class CustomListtile extends StatelessWidget {
  final String userName;
  const CustomListtile({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: ListTile(
        title: Text('Name: $userName'),
        shape: Border.all(width: 1),
      ),
    );
  }
}
