import 'package:flutter/material.dart';
import 'pages/tutorials_page.dart';
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
  final pillarData = Pillar(type: PillarType.flutter, articleCount: 115);
  late ValueNotifier<int> valueNotifier;

  @override
  void initState() {
    valueNotifier = ValueNotifier<int>(pillarData.articleCount);
    valueNotifier.addListener(() {
      setState(() {
        final increaseAmount = valueNotifier.value - pillarData.articleCount;
        pillarData.increaseArticleCount(by: increaseAmount);
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    valueNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tutorial Tracker',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tutorial Tracker'),
        ),
        body: TutorialsPage(pillar: pillarData, valueNotifier: valueNotifier),
      ),
    );
  }
}
