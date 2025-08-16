import 'package:flutter/material.dart';

class PointagesPage extends StatefulWidget {
  const PointagesPage({super.key});

  @override
  State<PointagesPage> createState() => _PointagesPageState();
}

class _PointagesPageState extends State<PointagesPage> {
  void handleAddPointage() {
    // TODO: Implement the logic to add a pointage
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: handleAddPointage,
        child: Icon(Icons.add),
      ),
    );
  }
}
