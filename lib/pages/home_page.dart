import 'package:flutter/material.dart';
import 'package:open_app/widgets/drawer.dart';

// day 11 - Learnt about context and contraints

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Catalog App",
        ),
      ),
      body: const Center(
        child: Text("my age is not"),
      ),
      drawer: const MyDrawer(),
    );
  }
}
