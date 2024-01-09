import 'package:auto_route/auto_route.dart';
import 'package:trinity_lecture_app/core/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> routes = [
    AutoRoute(page: MainRoute.page, initial: true),
    AutoRoute(page: DummyUIMainRoute.page),
    AutoRoute(page: TabBarRoute.page),
    AutoRoute(page: CounterRoute.page),
    AutoRoute(page: SimpleCalculatorRoute.page),
    AutoRoute(page: InputValidationRoute.page),
    AutoRoute(page: NewsRoute.page),
    AutoRoute(page: PopularArticleRoute.page),
    AutoRoute(page: StoriesTypeFilterRoute.page),
  ];
}
