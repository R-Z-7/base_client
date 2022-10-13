import 'package:base_client/controller/test_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final controller = TestController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              controller.getData();
            },
            child: const Text("Test")),
      ),
    );
  }
}
