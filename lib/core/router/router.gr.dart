// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CalculateRoute.name: (routeData) {
      final args = routeData.argsAs<CalculateRouteArgs>(
          orElse: () => const CalculateRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CalculatePage(key: args.key),
      );
    },
    CalculateRoute2.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CalculatePage2(),
      );
    },
    MyHomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyHomePage(),
      );
    },
    SbpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SbpPage(),
      );
    },
    TerminalRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TerminalPage(),
      );
    },
  };
}

/// generated route for
/// [CalculatePage]
class CalculateRoute extends PageRouteInfo<CalculateRouteArgs> {
  CalculateRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CalculateRoute.name,
          args: CalculateRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CalculateRoute';

  static const PageInfo<CalculateRouteArgs> page =
      PageInfo<CalculateRouteArgs>(name);
}

class CalculateRouteArgs {
  const CalculateRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'CalculateRouteArgs{key: $key}';
  }
}

/// generated route for
/// [CalculatePage2]
class CalculateRoute2 extends PageRouteInfo<void> {
  const CalculateRoute2({List<PageRouteInfo>? children})
      : super(
          CalculateRoute2.name,
          initialChildren: children,
        );

  static const String name = 'CalculateRoute2';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyHomePage]
class MyHomeRoute extends PageRouteInfo<void> {
  const MyHomeRoute({List<PageRouteInfo>? children})
      : super(
          MyHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyHomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SbpPage]
class SbpRoute extends PageRouteInfo<void> {
  const SbpRoute({List<PageRouteInfo>? children})
      : super(
          SbpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SbpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TerminalPage]
class TerminalRoute extends PageRouteInfo<void> {
  const TerminalRoute({List<PageRouteInfo>? children})
      : super(
          TerminalRoute.name,
          initialChildren: children,
        );

  static const String name = 'TerminalRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
