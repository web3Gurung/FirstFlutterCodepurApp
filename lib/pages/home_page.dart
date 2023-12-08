import 'package:flutter/material.dart';
import 'package:open_app/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Android Phone",
        ),
      ),
      body: const Center(
        child: Text("my age is not"),
      ),
      drawer: const MyDrawer(),
    );
  }
}
