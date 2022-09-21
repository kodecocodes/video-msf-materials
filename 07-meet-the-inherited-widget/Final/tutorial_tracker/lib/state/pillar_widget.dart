import 'package:flutter/material.dart';
import '../models/pillar.dart';

class PillarWidget extends InheritedWidget {
  final Pillar pillarData;

  const PillarWidget(
      {required this.pillarData, super.key, required super.child});

  static PillarWidget of(BuildContext context) {
    final PillarWidget? result =
        context.dependOnInheritedWidgetOfExactType<PillarWidget>();
    assert(result != null, 'No PillarWidget found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(PillarWidget oldWidget) {
    return (oldWidget.pillarData.articleCount == pillarData.articleCount);
  }
}
