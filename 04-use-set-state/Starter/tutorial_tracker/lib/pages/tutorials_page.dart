import 'package:flutter/material.dart';
import '../widgets/tutorial_widget.dart';

class TutorialsPage extends StatefulWidget {
  const TutorialsPage({super.key});

  @override
  State<TutorialsPage> createState() => _TutorialsPageState();
}

class _TutorialsPageState extends State<TutorialsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Center(child: TutorialWidget()),
        Padding(
          padding: EdgeInsets.only(top: 24.0),
          child: Text(
            'Total Tutorials: 115',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
