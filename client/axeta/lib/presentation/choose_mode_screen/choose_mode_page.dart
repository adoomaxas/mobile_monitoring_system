import 'package:auto_route/annotations.dart';
import 'package:axeta/presentation/choose_mode_screen/choose_mode_view.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChooseModeView();
  }
}
