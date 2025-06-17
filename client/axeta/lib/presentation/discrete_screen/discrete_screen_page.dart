import 'package:auto_route/annotations.dart';
import 'package:axeta/presentation/discrete_screen/discrete_screen_view.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DiscretePage extends StatelessWidget {
  const DiscretePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DiscreteScreenView();
  }
}
