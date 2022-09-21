import 'package:flutter/material.dart';

class TutorialWidget extends StatefulWidget {
  const TutorialWidget({super.key});

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
            print('increase article count');
          },
          child:
              Image.asset('assets/images/flutter.png', width: 110, height: 110),
        ),
        const Positioned(
          bottom: 2,
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('115'),
          ),
        )
      ],
    );
  }
}
