import 'package:fluro/fluro.dart';
import 'package:flutter_structure_web_app/app/ui/layouts/dashboard/features/home_view.dart';
import 'package:flutter_structure_web_app/app/ui/layouts/dashboard/features/settings_view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'dashboard_handlers.g.dart';

@riverpod
Handler dashBoardHandler(DashBoardHandlerRef ref) {
  return Handler(handlerFunc: (context, params) {
    return const HomeView();
  });
}

@riverpod
Handler settingsHandler(SettingsHandlerRef ref) {
  return Handler(handlerFunc: (context, params) {
    return const SettingsView();
  });
}
