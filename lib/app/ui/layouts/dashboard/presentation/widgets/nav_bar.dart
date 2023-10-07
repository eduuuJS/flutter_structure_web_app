import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_structure_web_app/app/ui/components/states/theme_state.dart';
import 'package:flutter_structure_web_app/app/ui/layouts/dashboard/presentation/controllers/sidebar_controller.dart';
import 'package:flutter_structure_web_app/app/ui/layouts/dashboard/presentation/widgets/circular_theme_selector.dart';
import 'package:flutter_structure_web_app/core/theme/app_colors.dart';
import 'package:flutter_structure_web_app/core/utils/query_size.dart';
import 'package:flutter_structure_web_app/core/utils/responsive.dart';
import 'package:iconsax/iconsax.dart';

class NavBar extends ConsumerWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //States
    final colors = ref.watch(colorsStateProvider);
    final isDarkTheme = ref.watch(themeStateProvider);

    //Elements
    Widget iconMenu = GestureDetector(
      onTap: () {
        ref.read(collapsedStateMenuProvider.notifier).desplegate();
        Scaffold.of(context).openDrawer();
      },
      child: Icon(
        Icons.menu,
        color: colors[ColorsName.primaryColor],
      ),
    );
    Widget titleText = Text(
      "Dashboard",
      style: TextStyle(
          color: colors[ColorsName.mainTextColor],
          fontSize: 20,
          fontWeight: FontWeight.bold),
    );
    Widget searchBox = Container(
      width: QuerySize.width(context, 0.3),
      height: 29,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: colors[ColorsName.searchBox],
          borderRadius: BorderRadius.circular(25.0)),
      child: Center(
        child: Row(
          children: [
            Icon(
              Iconsax.search_normal_1,
              color: colors[ColorsName.mainIcon],
              size: 15,
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              "Search",
              style: TextStyle(
                  color: colors[ColorsName.mainTextColor], fontSize: 12),
            )
          ],
        ),
      ),
    );
    Widget themeSelector = Container(
      height: 24,
      decoration: BoxDecoration(
          color: colors[ColorsName.searchBox],
          borderRadius: BorderRadius.circular(25)),
      child: Row(
        children: [
          CircularThemeSelector(
            onTap: () {
              ref.read(themeStateProvider.notifier).selectIsDark(true);
            },
            icon: Iconsax.moon5,
            isActive: isDarkTheme,
            isMoon: true,
            primary: colors[ColorsName.primaryDarkColor]!,
          ),
          const SizedBox(
            width: 5.0,
          ),
          CircularThemeSelector(
            onTap: () {
              ref.read(themeStateProvider.notifier).selectIsDark(false);
            },
            icon: Iconsax.sun_15,
            isActive: !isDarkTheme,
            isMoon: false,
            primary: colors[ColorsName.primaryDarkColor]!,
          ),
        ],
      ),
    );
    Widget adminCard = Row(
      children: [
        CircleAvatar(
          backgroundColor: colors[ColorsName.primaryLightColor],
          radius: 12,
          child: Icon(
            Iconsax.user4,
            color: colors[ColorsName.primaryDarkColor],
            size: 18,
          ),
        ),
        if (!Responsive.isMobile(context))
          Row(
            children: [
              const SizedBox(width: 10.0),
              Text(
                "Edward Ingaruca Sedano",
                style: TextStyle(
                    fontSize: 12,
                    color: colors[ColorsName.mainTextActive],
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        const SizedBox(width: 5.0),
        const Icon(
          Iconsax.arrow_down_1,
          size: 15,
        ),
        const SizedBox(width: 5.0),
      ],
    );
    Widget rightBar = Container(
      height: 45,
      decoration: BoxDecoration(
          color: colors[ColorsName.transparencyLayerHard],
          borderRadius: BorderRadius.circular(25.0),
          boxShadow: isDarkTheme
              ? null
              : [
                  BoxShadow(
                      offset: const Offset(0, 0),
                      blurRadius: 7,
                      spreadRadius: -7,
                      color: colors[ColorsName.dGrayColor]!)
                ]),
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (Responsive.isDesktop(context))
                Row(
                  children: [
                    searchBox,
                    const SizedBox(
                      width: 25.0,
                    )
                  ],
                ),
              themeSelector,
              const SizedBox(
                width: 25,
              ),
              adminCard
            ],
          ),
        ),
      ),
    );

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      height: 70,
      color: Colors.transparent,
      child: Center(
        child: Row(
          children: [
            if (!Responsive.isDesktop(context))
              Row(
                children: [
                  iconMenu,
                  const SizedBox(
                    width: 15.0,
                  )
                ],
              ),
            titleText,
            const Spacer(),
            rightBar
          ],
        ),
      ),
    );
  }
}
