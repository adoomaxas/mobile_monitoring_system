import 'package:auto_route/annotations.dart';
import 'package:axeta/presentation/analog_screen/analog_history_view.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AnalogPage extends StatelessWidget {
  const AnalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnalogHistoryView();
  }
}
