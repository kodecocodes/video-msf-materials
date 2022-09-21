import 'package:flutter/material.dart';

class Pillar {
  var _articleCount = 0;
  int get articleCount => _articleCount;
  var active = true;
  final PillarType type;

  Pillar({required this.type, int articleCount = 10}) {
    _articleCount = articleCount;
  }

  void increaseArticleCount({int by = 1}) {
    _articleCount += by;
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
