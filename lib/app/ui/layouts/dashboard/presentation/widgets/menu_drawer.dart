import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_structure_web_app/app/ui/layouts/dashboard/presentation/controllers/sidebar_controller.dart';
import 'package:flutter_structure_web_app/app/ui/layouts/dashboard/presentation/widgets/menu_option.dart';
import 'package:flutter_structure_web_app/core/theme/app_colors.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const Border(),
      elevation: 3.0,
      backgroundColor: Colors.white,
      surfaceTintColor: AppColors.whiteColor,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    height: 80.0,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/img/logo_sidebar.jpeg"),
                            fit: BoxFit.fitWidth)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(child: Consumer(builder: (context, ref, _) {
              final listOptions = ref.watch(menuListStateProvider);
              return ListView.separated(
                itemCount: listOptions.length,
                itemBuilder: (_, index) {
                  final item = listOptions[index];
                  return MenuOption(
                    item: item,
                    onTap: () {
                      ref.read(menuListStateProvider.notifier).chooseAction(
                          item.route ?? "", item.isDesplegable ?? false);
                    },
                  );
                },
                separatorBuilder: (_, index) {
                  return const SizedBox(height: 7.0);
                },
              );
            }))
            // Expanded(
            //   child: Obx(
            //     () => ListView.builder(
            //         itemCount: controller.options.length + 1,
            //         itemBuilder: (_, index) {
            //           if (index == controller.options.length) {
            //             return Column(
            //               children: [
            //                 const SizedBox(
            //                   height: 50.0,
            //                 ),
            //                 MenuOption(
            //                     onTapSubMenu: (route) {},
            //                     item: ResponseMenuOptionsModel(
            //                         isChild: false,
            //                         isDesplegated: false,
            //                         route: "/login",
            //                         nameOption: "Cerrar Sesión",
            //                         isDesplegable: false,
            //                         isActive: false,
            //                         onTap: () {},
            //                         iconOption: HelpersComponents.pathAssetIcons(
            //                             "login.png", AppColors.grayMiddle)),
            //                     isCollapsed: isCollapsed,
            //                     onTapMenu: () {
            //                       controller.logout(false);
            //                     }),
            //                 const SizedBox(
            //                   height: 20.0,
            //                 ),
            //               ],
            //             );
            //           } else {
            //             return MenuOption(
            //               item: controller.options[index],
            //               isCollapsed: isCollapsed,
            //               onTapMenu: () {
            //                 if (controller.options[index].isDesplegable!) {
            //                   if (isCollapsed) {
            //                     onTapCollapsed!();
            //                   }
            //                   controller.setDesplegated(
            //                       controller.options[index].route ?? "");
            //                 } else {
            //                   controller.setActive(
            //                       controller.options[index].route ?? "");
            //                 }
            //               },
            //               onTapSubMenu: (route) {
            //                 print("route");
            //               },
            //             );
            //           }
            //         }),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
