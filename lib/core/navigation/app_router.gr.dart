// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:flutter_task/core/utils/enums.dart' as _i10;
import 'package:flutter_task/pages/home/home_page.dart' as _i7;
import 'package:flutter_task/pages/nav_bar/nav_bar_page.dart' as _i1;
import 'package:flutter_task/pages/place_holders/account_page.dart' as _i2;
import 'package:flutter_task/pages/place_holders/receive_requests_page.dart'
    as _i3;
import 'package:flutter_task/pages/place_holders/work_orders_page.dart' as _i4;
import 'package:flutter_task/pages/rating/rating_page.dart' as _i5;
import 'package:flutter_task/pages/status/status_page.dart' as _i6;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    NavBarRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.NavBarPage(),
      );
    },
    AccountRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AccountPage(),
      );
    },
    ReceiveRequestsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ReceiveRequestsPage(),
      );
    },
    WorkOrdersRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.WorkOrdersPage(),
      );
    },
    RatingRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.RatingPage(),
      );
    },
    StatusRoute.name: (routeData) {
      final args = routeData.argsAs<StatusRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.StatusPage(
          status: args.status,
          key: args.key,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HomePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.NavBarPage]
class NavBarRoute extends _i8.PageRouteInfo<void> {
  const NavBarRoute({List<_i8.PageRouteInfo>? children})
      : super(
          NavBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavBarRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AccountPage]
class AccountRoute extends _i8.PageRouteInfo<void> {
  const AccountRoute({List<_i8.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ReceiveRequestsPage]
class ReceiveRequestsRoute extends _i8.PageRouteInfo<void> {
  const ReceiveRequestsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ReceiveRequestsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReceiveRequestsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.WorkOrdersPage]
class WorkOrdersRoute extends _i8.PageRouteInfo<void> {
  const WorkOrdersRoute({List<_i8.PageRouteInfo>? children})
      : super(
          WorkOrdersRoute.name,
          initialChildren: children,
        );

  static const String name = 'WorkOrdersRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.RatingPage]
class RatingRoute extends _i8.PageRouteInfo<void> {
  const RatingRoute({List<_i8.PageRouteInfo>? children})
      : super(
          RatingRoute.name,
          initialChildren: children,
        );

  static const String name = 'RatingRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.StatusPage]
class StatusRoute extends _i8.PageRouteInfo<StatusRouteArgs> {
  StatusRoute({
    required _i10.OrderStatus status,
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          StatusRoute.name,
          args: StatusRouteArgs(
            status: status,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'StatusRoute';

  static const _i8.PageInfo<StatusRouteArgs> page =
      _i8.PageInfo<StatusRouteArgs>(name);
}

class StatusRouteArgs {
  const StatusRouteArgs({
    required this.status,
    this.key,
  });

  final _i10.OrderStatus status;

  final _i9.Key? key;

  @override
  String toString() {
    return 'StatusRouteArgs{status: $status, key: $key}';
  }
}

/// generated route for
/// [_i7.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
