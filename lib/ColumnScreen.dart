import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text('Columns'), Icon(Icons.view_column_outlined)],
        ),
      ),
      body:
          Container(alignment: Alignment.center, child: Text('About columns')),
    );
  }
}
