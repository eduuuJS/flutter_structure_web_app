import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_structure_web_app/app/ui/layouts/dashboard/domain/menu_option_model.dart';
import 'package:flutter_structure_web_app/core/theme/app_colors.dart';
import 'package:iconsax/iconsax.dart';

class MenuOption extends ConsumerWidget {
  const MenuOption(
      {Key? key,
      required this.item,
      required this.onTap,
      required this.isCollapsed})
      : super(key: key);
  final MenuOptionDomain item;
  final void Function()? onTap;
  final bool isCollapsed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ref.watch(colorsStateProvider);
    return Material(
      color: Colors.transparent,
      child: InkWell(
        hoverColor: colors[ColorsName.boxHover],
        highlightColor: colors[ColorsName.boxActive],
        borderRadius: BorderRadius.circular(8.0),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: item.isActive!
                  ? colors[ColorsName.boxActive]
                  : Colors.transparent),
          child: !isCollapsed
              ? Row(
                  children: [
                    item.isChild!
                        ? const SizedBox(
                            width: 18.0,
                          )
                        : Icon(
                            item.icon,
                            color: item.isActive!
                                ? colors[ColorsName.primaryDarkColor]
                                : colors[ColorsName.grayBlueColor],
                            size: 16.0,
                          ),
                    const SizedBox(width: 9),
                    Text(
                      item.nameOption ?? "",
                      style: TextStyle(
                          fontSize: 12.8,
                          color: item.isActive!
                              ? colors[ColorsName.mainTextActive]
                              : colors[ColorsName.mainTextColor],
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    item.isDesplegable!
                        ? item.isDesplegated!
                            ? Icon(
                                Iconsax.arrow_down_1,
                                color: colors[ColorsName.mainIcon],
                                size: 16.0,
                              )
                            : Icon(
                                Iconsax.arrow_right_3,
                                color: colors[ColorsName.mainIcon],
                                size: 16.0,
                              )
                        : const SizedBox()
                  ],
                )
              : Icon(
                  item.icon,
                  color: item.isActive!
                      ? colors[ColorsName.primaryDarkColor]
                      : colors[ColorsName.grayBlueColor],
                  size: 16.0,
                ),
        ),
      ),
    );
  }
}
