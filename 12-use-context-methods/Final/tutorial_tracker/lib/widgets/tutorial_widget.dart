import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/pillar.dart';

class TutorialWidget extends StatefulWidget {
  const TutorialWidget({super.key});

  @override
  State<TutorialWidget> createState() => _TutorialWidgetState();
}

class _TutorialWidgetState extends State<TutorialWidget> {
  @override
  Widget build(BuildContext context) {
    final pillar = context.watch<Pillar>();
    return Stack(
      children: [
        InkWell(
          onTap: () {
            pillar.increaseArticleCount();
          },
          child: Image.asset('assets/images/${pillar.type.imageName}',
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
