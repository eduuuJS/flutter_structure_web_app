import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_structure_web_app/app/routes/app_router_config.dart';
import 'package:flutter_structure_web_app/app/routes/app_routes.dart';
import 'package:flutter_structure_web_app/app/routes/navigation_service.dart';
import 'package:flutter_structure_web_app/app/ui/components/states/theme_state.dart';
import 'package:flutter_structure_web_app/app/ui/layouts/dashboard/presentation/dashboard_layout.dart';
import 'package:flutter_structure_web_app/core/theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppRouterConfig.configureRoutes();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkTheme = ref.watch(themeStateProvider);
    return MaterialApp(
      title: 'Flutter Structure WebApp',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.rootRoute,
      onGenerateRoute: AppRouterConfig.router.generator,
      navigatorKey: NavigationService.navigatorKey,
      // scaffoldMessengerKey: NotificationsService.messengerKey,
      builder: (_, child) {
        return DashboardLayout(child: child ?? const SizedBox());
      },
      theme: AppTheme(isDarkmode: isDarkTheme).getTheme(),
    );
  }
}
