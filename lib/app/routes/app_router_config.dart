import 'package:fluro/fluro.dart';
import 'package:flutter_structure_web_app/app/routes/app_routes.dart';
import 'package:flutter_structure_web_app/app/routes/handlers/admin_handlers.dart';
import 'package:flutter_structure_web_app/app/routes/handlers/dashboard_handlers.dart';
import 'package:flutter_structure_web_app/app/routes/handlers/no_page_found_handlers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'app_router_config.g.dart';

@riverpod
FluroRouter appRouterConfigState(AppRouterConfigStateRef ref) {
  FluroRouter router = FluroRouter();
  router.define(AppRoutes.rootRoute,
      handler: AdminHandlers.login, transitionType: TransitionType.none);
  router.define(AppRoutes.loginRoute,
      handler: AdminHandlers.login, transitionType: TransitionType.none);
  router.define(AppRoutes.registerRoute,
      handler: AdminHandlers.register, transitionType: TransitionType.none);

  // Dashboard
  router.define(AppRoutes.dashboardRoute,
      handler: ref.watch(dashBoardHandlerProvider),
      transitionType: TransitionType.none);

  // users
  // router.define(AppRoutes.usersRoute,
  //     handler: DashboardHandlers.users, transitionType: TransitionType.none);

  // settings
  router.define(AppRoutes.settingsRoute,
      handler: ref.watch(settingsHandlerProvider),
      transitionType: TransitionType.none);

  // 404
  router.notFoundHandler = NoPageFoundHandlers.noPageFound;
  return router;
}
