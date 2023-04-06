import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: NavBarRoute.page,children: [
      AutoRoute(page: HomeRoute.page),
      AutoRoute(page: ReceiveRequestsRoute.page),
      AutoRoute(page: WorkOrdersRoute.page),
      AutoRoute(page: AccountRoute.page),
    ]),
    AutoRoute(page: RatingRoute.page),
    AutoRoute(page: StatusRoute.page),
  ];
}