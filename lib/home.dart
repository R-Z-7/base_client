import 'package:base_client/services/base_client.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              var response = await BaseClient()
                  .get('https://jsonplaceholder.typicode.com', '/todos/1');
              print(response);
            },
            child: const Text("Test")),
      ),
    );
  }
}
