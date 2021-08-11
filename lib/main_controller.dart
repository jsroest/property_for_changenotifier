import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:property_for_changenotifier/property.dart';

final mainControllerProvider = ChangeNotifierProvider<MainController>(
  (ref) {
    return MainController();
  },
);

class MainController extends ChangeNotifier {
  late var counter = Property<int>(0, notifyListeners);

  void incrementCounter() => counter.value++;
}
