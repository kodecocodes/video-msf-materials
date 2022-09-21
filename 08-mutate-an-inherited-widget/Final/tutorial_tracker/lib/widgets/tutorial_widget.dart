import 'package:flutter/material.dart';
import '../models/pillar.dart';
import '../state/pillar_widget.dart';

class TutorialWidget extends StatefulWidget {
  const TutorialWidget({super.key});

  @override
  State<TutorialWidget> createState() => _TutorialWidgetState();
}

class _TutorialWidgetState extends State<TutorialWidget> {
  @override
  Widget build(BuildContext context) {
    final pillar = PillarInheritedWidget.of(context);
    return Stack(
      children: [
        InkWell(
          onTap: () {
            pillar.increaseArticleCount();
          },
          child: Image.asset('assets/images/${pillar.imageName}',
              width: 110, height: 110),
        ),
        Positioned(
          bottom: 2,
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text(pillar.articleCount.toString()),
          ),
        )
      ],
    );
  }
}
