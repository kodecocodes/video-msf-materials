import 'package:flutter/material.dart';
import '../widgets/tutorial_widget.dart';
import '../models/pillar.dart';

class TutorialsPage extends StatefulWidget {
  final Pillar pillar;

  const TutorialsPage({required this.pillar, super.key});

  @override
  State<TutorialsPage> createState() => _TutorialsPageState();
}

class _TutorialsPageState extends State<TutorialsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
            child: TutorialWidget(
          pillar: widget.pillar,
        )),
        Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: Text(
            'Total Tutorials: ${widget.pillar.articleCount}',
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
