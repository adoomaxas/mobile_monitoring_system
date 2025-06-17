import 'package:auto_route/auto_route.dart';
import 'package:axeta/presentation/auth_screen/auth_screen.dart';

import '../presentation/presentation.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: ChooseModeRoute.page, initial: true),
    AutoRoute(page: AuthRoute.page),
    AutoRoute(page: AnalogRoute.page),
    AutoRoute(page: DiscreteRoute.page),
    AutoRoute(page: TreeRoute.page),
  ];
}
