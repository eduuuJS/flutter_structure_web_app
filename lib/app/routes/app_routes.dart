abstract class AppRoutes {
  static const String rootRoute = '/';

  // Auth Router
  static const String loginRoute = '/auth/login';
  static const String registerRoute = '/auth/register';

  // Dashboard
  static const String dashboardRoute = '/dashboard';
  static const String usersRoute = '/dashboard/users';
  static const String settingsRoute = '/dashboard/settings';
}

abstract class AppTitles {
  // Dashboard
  static String dashboardRoute = 'Flutter Web';
  static String usersRoute = 'Users';
  static String settingsRoute = 'Settings';

  static String getAppTitle(String route) {
    switch (route) {
      case AppRoutes.dashboardRoute:
        return dashboardRoute;
      case AppRoutes.usersRoute:
        return usersRoute;
      case AppRoutes.settingsRoute:
        return settingsRoute;
      default:
        return "Default";
    }
  }
}
