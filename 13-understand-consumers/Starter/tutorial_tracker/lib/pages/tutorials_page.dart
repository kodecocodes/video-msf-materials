import 'package:flutter/material.dart';
import '../widgets/tutorial_widget.dart';
import 'package:provider/provider.dart';
import '../models/pillar.dart';

class TutorialsPage extends StatefulWidget {
  const TutorialsPage({super.key});

  @override
  State<TutorialsPage> createState() => _TutorialsPageState();
}

class _TutorialsPageState extends State<TutorialsPage> {
  @override
  Widget build(BuildContext context) {
    final pillar = context.watch<Pillar>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Center(
          child: TutorialWidget(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: Text(
            'Total Tutorials: ${pillar.articleCount}',
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
