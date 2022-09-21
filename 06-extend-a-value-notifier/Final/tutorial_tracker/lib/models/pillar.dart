import 'package:flutter/material.dart';

class Pillar extends ValueNotifier<int> {
  int get articleCount => value;
  var active = true;
  final PillarType type;

  Pillar({required this.type, int articleCount = 10}) : super(articleCount);

  void increaseArticleCount({int by = 1}) {
    value += by;
  }
}

enum PillarType {
  flutter('flutter.png', Colors.blue),
  android('android.png', Colors.green),
  ios('ios.png', Colors.orange);

  final String imageName;
  final Color backgroundColor;

  const PillarType(this.imageName, this.backgroundColor);
}
