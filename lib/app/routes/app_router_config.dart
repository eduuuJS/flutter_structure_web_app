import 'package:fluro/fluro.dart';
import 'package:flutter_structure_web_app/app/routes/app_routes.dart';
import 'package:flutter_structure_web_app/app/routes/handlers/admin_handlers.dart';
import 'package:flutter_structure_web_app/app/routes/handlers/dashboard_handlers.dart';
import 'package:flutter_structure_web_app/app/routes/handlers/no_page_found_handlers.dart';

class AppRouterConfig {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    // Auth Routes
    router.define(AppRoutes.rootRoute,
        handler: AdminHandlers.login, transitionType: TransitionType.none);
    router.define(AppRoutes.loginRoute,
        handler: AdminHandlers.login, transitionType: TransitionType.none);
    router.define(AppRoutes.registerRoute,
        handler: AdminHandlers.register, transitionType: TransitionType.none);

    // Dashboard
    router.define(AppRoutes.dashboardRoute,
        handler: DashboardHandlers.dashboard,
        transitionType: TransitionType.none);

    // users
    router.define(AppRoutes.usersRoute,
        handler: DashboardHandlers.users, transitionType: TransitionType.none);

    // settings
    router.define(AppRoutes.setitngsRoute,
        handler: DashboardHandlers.settings,
        transitionType: TransitionType.none);

    // 404
    router.notFoundHandler = NoPageFoundHandlers.noPageFound;
  }
}
