import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;

  void upCount() {
    setState(() {
      counter += 1;
    });
  }

  void downCount() {
    setState(() {
      counter -= 1;
    });
  }

  void resetCount() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click Count',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                '$counter',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 40,
                    onPressed: upCount,
                    icon: const Icon(Icons.add_box_rounded),
                  ),
                  IconButton(
                    iconSize: 40,
                    onPressed: downCount,
                    icon: const Icon(Icons.indeterminate_check_box_rounded),
                  ),
                  IconButton(
                    iconSize: 40,
                    onPressed: resetCount,
                    icon: const Icon(Icons.refresh_rounded),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
