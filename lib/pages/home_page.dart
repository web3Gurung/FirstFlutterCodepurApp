import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Android Phone",
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: const Text("my age is not"),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
