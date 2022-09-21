import 'package:flutter/material.dart';
import '../models/pillar.dart';

class TutorialWidget extends StatefulWidget {
  final Pillar pillar;
  final ValueNotifier<int> valueNotifier;
  const TutorialWidget(
      {required this.pillar, required this.valueNotifier, super.key});

  @override
  State<TutorialWidget> createState() => _TutorialWidgetState();
}

class _TutorialWidgetState extends State<TutorialWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            widget.valueNotifier.value += 1;
          },
          child: Image.asset('assets/images/${widget.pillar.type.imageName}',
              width: 110, height: 110),
        ),
        Positioned(
          bottom: 2,
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text(widget.pillar.articleCount.toString()),
          ),
        )
      ],
    );
  }
}
