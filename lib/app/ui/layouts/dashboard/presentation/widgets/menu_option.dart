import 'package:flutter/material.dart';
import 'package:flutter_structure_web_app/app/ui/layouts/dashboard/domain/menu_option_model.dart';
import 'package:flutter_structure_web_app/core/theme/app_colors.dart';
import 'package:iconsax/iconsax.dart';

class MenuOption extends StatelessWidget {
  const MenuOption({Key? key, required this.item, required this.onTap})
      : super(key: key);
  final MenuOptionDomain item;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        hoverColor: AppColors.primaryLightHoverColor,
        highlightColor: AppColors.primaryLightActiveColor,
        borderRadius: BorderRadius.circular(8.0),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: item.isActive!
                  ? AppColors.primaryLightActiveColor
                  : Colors.transparent),
          child: Row(
            children: [
              item.isChild!
                  ? const SizedBox(
                      width: 18.0,
                    )
                  : Icon(
                      item.icon,
                      color: item.isActive!
                          ? AppColors.primaryDarkColor
                          : AppColors.grayBlueColor,
                      size: 18.0,
                    ),
              const SizedBox(width: 9),
              Text(
                item.nameOption ?? "",
                style: TextStyle(
                    fontSize: 14.0,
                    color: item.isActive!
                        ? AppColors.primaryDarkColor
                        : AppColors.grayColor,
                    fontWeight: FontWeight.w600),
              ),
              const Spacer(),
              item.isDesplegable!
                  ? item.isDesplegated!
                      ? const Icon(Iconsax.arrow_up_2)
                      : const Icon(Iconsax.arrow_down_1)
                  : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
