// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: Container(
          padding: const EdgeInsets.all(40),
          color: Colors.black,
          child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.yellow,
              padding: const EdgeInsets.all(40),
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                child: const Text(
                  'I \nLOVE \nUGANDA',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ))),
    );
  }
}
