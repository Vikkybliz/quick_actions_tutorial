import 'package:app_shortcut/page.dart';
import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final quickactions = const QuickActions();

  @override
  void initState() {
    quickactions.setShortcutItems([
      const ShortcutItem(type: 'events', localizedTitle: 'Check Events', icon: 'task'),
      const ShortcutItem(type: 'books', localizedTitle: 'Check Books', icon: 'books')
    ]);
    quickactions.initialize((type) {
      if (type == 'events') {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: ((context) => const Pages(title: 'Events'))));
      } else {
        if (type == 'books') {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Pages(title: 'Books')));
        }
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
    );
  }
}
