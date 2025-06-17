import 'package:auto_route/annotations.dart';
import 'package:axeta/presentation/tree_screen/tree_screen_view.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TreePage extends StatelessWidget {
  const TreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return TreeScreenView();
  }
}
