import 'package:flutter/material.dart';

class Pillar extends ChangeNotifier {
  int get articleCount => _articleCount;
  int _articleCount = 0;
  var active = true;
  final PillarType type;

  Pillar({required this.type, int articleCount = 10}) {
    _articleCount = articleCount;
  }

  void increaseArticleCount({int by = 1}) {
    _articleCount += by;
    notifyListeners();
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
