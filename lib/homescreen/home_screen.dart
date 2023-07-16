import 'package:flutter/material.dart';
import 'package:second_project/utils/drawe.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,
        backgroundColor: Colors.green[200],
      ),
      drawer: Drawe(),
      body: Center(
        child: Text("NOTHING TO SEE HERE "),
      ),
    );
  }
}