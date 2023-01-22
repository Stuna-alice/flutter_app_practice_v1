// ignore_for_file: non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:test_app_v2/home_page.dart';

void main() {
  runApp(const MyApp());
}

//First page
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const RootPage(),
    );
  }
}

// Bottom nav Home and Person APp bar

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

int current_page = 0; // next page increment

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MineBeaMitsumi"),
      ),
      body: Homepage(), //change screen

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Action');
        },
        child: const Icon(Icons.ac_unit_rounded), //icon
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'person'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            current_page = index;
          });
        },
        selectedIndex: current_page,
      ),
    );
  }
}
