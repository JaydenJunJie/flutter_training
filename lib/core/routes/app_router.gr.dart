// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:trinity_lecture_app/presentation/pages/dummy_ui_main_page.dart'
    as _i1;
import 'package:trinity_lecture_app/presentation/pages/main_page/main_page.dart'
    as _i2;
import 'package:trinity_lecture_app/presentation/pages/tabbar_page.dart' as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    DummyUIMainRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DummyUIMainPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.MainPage(),
      );
    },
    TabBarRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.TabBarPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DummyUIMainPage]
class DummyUIMainRoute extends _i4.PageRouteInfo<void> {
  const DummyUIMainRoute({List<_i4.PageRouteInfo>? children})
      : super(
          DummyUIMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'DummyUIMainRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.MainPage]
class MainRoute extends _i4.PageRouteInfo<void> {
  const MainRoute({List<_i4.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.TabBarPage]
class TabBarRoute extends _i4.PageRouteInfo<void> {
  const TabBarRoute({List<_i4.PageRouteInfo>? children})
      : super(
          TabBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'TabBarRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
