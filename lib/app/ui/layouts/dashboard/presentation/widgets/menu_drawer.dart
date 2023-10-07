import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_structure_web_app/app/ui/components/states/theme_state.dart';
import 'package:flutter_structure_web_app/app/ui/layouts/dashboard/presentation/controllers/sidebar_controller.dart';
import 'package:flutter_structure_web_app/app/ui/layouts/dashboard/presentation/widgets/menu_option.dart';
import 'package:flutter_structure_web_app/core/theme/app_colors.dart';
import 'package:flutter_structure_web_app/core/utils/responsive.dart';

class MenuDrawer extends ConsumerWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listOptions = ref.watch(menuListStateProvider);
    final isCollapsed = ref.watch(collapsedStateMenuProvider);
    final colors = ref.watch(colorsStateProvider);
    final isDarkTheme = ref.watch(themeStateProvider);
    return Drawer(
      shape: const Border(),
      elevation: 3.0,
      backgroundColor: colors[ColorsName.transparencyLayerSoft],
      surfaceTintColor: colors[ColorsName.transparencyLayerSoft],
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      if (Responsive.isDesktop(context)) {
                        ref
                            .read(collapsedStateMenuProvider.notifier)
                            .switchState();
                      }
                    },
                    child: isCollapsed
                        ? Container(
                            margin:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            height: 80.0,
                            child: Icon(
                              Icons.menu,
                              color: colors[ColorsName.primaryColor],
                            ),
                          )
                        : Container(
                            margin:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            height: 80.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(isDarkTheme
                                        ? "assets/img/logo_sidebar_dark.jpeg"
                                        : "assets/img/logo_sidebar.jpeg"),
                                    fit: BoxFit.fitWidth)),
                          ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
                child: ListView.separated(
              itemCount: listOptions.length,
              itemBuilder: (_, index) {
                final item = listOptions[index];
                return MenuOption(
                  item: item,
                  onTap: () {
                    ref.read(menuListStateProvider.notifier).chooseAction(
                        item.route ?? "", item.isDesplegable ?? false);
                    if ((!item.isDesplegable!) &&
                        (!Responsive.isDesktop(context))) {
                      Scaffold.of(context).closeDrawer();
                    }
                  },
                  isCollapsed: isCollapsed,
                );
              },
              separatorBuilder: (_, index) {
                return const SizedBox(height: 7.0);
              },
            ))
          ],
        ),
      ),
    );
  }
}
