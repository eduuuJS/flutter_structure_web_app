import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_structure_web_app/app/ui/components/states/theme_state.dart';
import 'package:flutter_structure_web_app/app/ui/layouts/dashboard/presentation/controllers/sidebar_controller.dart';
import 'package:flutter_structure_web_app/app/ui/layouts/dashboard/presentation/widgets/menu_drawer.dart';
import 'package:flutter_structure_web_app/app/ui/layouts/dashboard/presentation/widgets/nav_bar.dart';
import 'package:flutter_structure_web_app/core/theme/app_colors.dart';
import 'package:flutter_structure_web_app/core/utils/query_size.dart';
import 'package:flutter_structure_web_app/core/utils/responsive.dart';

class DashboardLayout extends ConsumerWidget {
  const DashboardLayout({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isCollapsed = ref.watch(collapsedStateMenuProvider);
    final isDarkTheme = ref.watch(themeStateProvider);
    final colors = ref.watch(colorsStateProvider);
    return Scaffold(
      drawer: const MenuDrawer(),
      key: GlobalKey(),
      // backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: isDarkTheme
                ? const DecorationImage(
                    image: AssetImage("assets/img/background_dark.jpg"),
                    fit: BoxFit.cover)
                : null,
            color: isDarkTheme ? null : colors[ColorsName.primaryLightColor],
          ),
          child: Row(
            children: [
              if (Responsive.isDesktop(context))
                SizedBox(
                  width: isCollapsed ? 70 : QuerySize.width(context, 0.18),
                  child: const MenuDrawer(),
                ),
              Expanded(
                  child: Column(
                children: [
                  const Row(
                    children: [
                      Expanded(child: NavBar()),
                    ],
                  ),
                  Expanded(child: child),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
