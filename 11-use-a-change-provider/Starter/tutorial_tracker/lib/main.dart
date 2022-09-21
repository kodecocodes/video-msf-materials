import 'package:flutter/material.dart';
import 'pages/tutorials_page.dart';
import 'package:provider/provider.dart';
import 'models/pillar.dart';

void main() {
  runApp(const Application());
}

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tutorial Tracker',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tutorial Tracker'),
        ),
        body: Provider<Pillar>(
          create: (context) =>
              Pillar(type: PillarType.flutter, articleCount: 115),
          child: const TutorialsPage(),
        ),
      ),
    );
  }
}
