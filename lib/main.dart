import 'package:first_app/ColumnScreen.dart';
import 'package:first_app/RowScreen.dart';
import 'package:flutter/material.dart';

import 'containerScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.yellow,
      ),
      home: const MyHomePage(title: "First App"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.construction_outlined),
            title: Text("Container"),
            subtitle: Text('something about container...'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ContainerScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.table_rows_outlined),
            title: Text('Rows'),
            subtitle: Text('About rows in flutter...'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => RowScreen()))
            },
          ),
          ListTile(
            leading: Icon(Icons.view_column_outlined),
            title: Text('Column'),
            subtitle: Text('About columns in flutter...'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ColumnScreen()))
            },
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
            backgroundColor: Colors.black54,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_center_outlined),
            label: 'Help',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
