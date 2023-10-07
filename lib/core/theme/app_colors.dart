import 'package:flutter/material.dart';
import 'package:flutter_structure_web_app/app/ui/components/states/theme_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_colors.g.dart';

@riverpod
class ColorsState extends _$ColorsState {
  Map<ColorsName, Color> lightColors = {
    ColorsName.whiteColor: const Color.fromRGBO(255, 255, 255, 1),
    ColorsName.silverColor: const Color.fromRGBO(245, 247, 250, 1),
    ColorsName.grayBlueColor: const Color.fromRGBO(171, 190, 190, 1),
    ColorsName.lGrayColor: const Color.fromRGBO(142, 147, 158, 1),
    ColorsName.grayColor: const Color.fromRGBO(113, 113, 113, 1),
    ColorsName.dGrayColor: const Color.fromRGBO(77, 77, 77, 1),
    ColorsName.blackColor: const Color.fromRGBO(33, 33, 33, 1),
    ColorsName.primaryLightColor: const Color.fromRGBO(244, 247, 254, 1),
    ColorsName.primaryLightHoverColor: const Color.fromRGBO(248, 249, 254, 1),
    ColorsName.primaryLightActiveColor: const Color.fromRGBO(238, 239, 252, 1),
    ColorsName.primaryColor: const Color.fromRGBO(82, 95, 225, 1),
    ColorsName.primaryHoverColor: const Color.fromRGBO(74, 86, 203, 1),
    ColorsName.primaryActiveColor: const Color.fromRGBO(66, 76, 180, 1),
    ColorsName.primaryDarkColor: const Color.fromRGBO(62, 71, 169, 1),
    ColorsName.transparencyLayerSoft: const Color.fromRGBO(255, 255, 255, 1),
    ColorsName.transparencyLayerHard: const Color.fromRGBO(255, 255, 255, 1),
    ColorsName.mainTextColor: const Color.fromRGBO(77, 77, 77, 1),
    ColorsName.mainTextActive: const Color.fromRGBO(62, 71, 169, 1),
    ColorsName.boxHover: const Color.fromRGBO(248, 249, 254, 1),
    ColorsName.boxActive: const Color.fromRGBO(238, 239, 252, 1),
    ColorsName.mainIcon: const Color.fromRGBO(33, 33, 33, 1),
    ColorsName.searchBox: const Color.fromRGBO(244, 247, 254, 1),
  };

  Map<ColorsName, Color> darkColors = {
    ColorsName.whiteColor: const Color.fromRGBO(255, 255, 255, 1),
    ColorsName.silverColor: const Color.fromRGBO(245, 247, 250, 1),
    ColorsName.grayBlueColor: const Color.fromRGBO(171, 190, 190, 1),
    ColorsName.lGrayColor: const Color.fromRGBO(142, 147, 158, 1),
    ColorsName.grayColor: const Color.fromRGBO(255, 255, 255, 1),
    ColorsName.dGrayColor: const Color.fromRGBO(77, 77, 77, 1),
    ColorsName.blackColor: const Color.fromRGBO(33, 33, 33, 1),
    ColorsName.primaryLightColor: const Color.fromRGBO(244, 247, 254, 1),
    ColorsName.primaryLightHoverColor: const Color.fromRGBO(82, 95, 225, 0.1),
    ColorsName.primaryLightActiveColor: const Color.fromRGBO(82, 95, 225, 1),
    ColorsName.primaryColor: const Color.fromRGBO(82, 95, 225, 1),
    ColorsName.primaryHoverColor: const Color.fromRGBO(74, 86, 203, 1),
    ColorsName.primaryActiveColor: const Color.fromRGBO(66, 76, 180, 1),
    ColorsName.primaryDarkColor: const Color.fromRGBO(62, 71, 169, 1),
    ColorsName.transparencyLayerSoft: const Color.fromRGBO(9, 21, 105, 0.012),
    ColorsName.transparencyLayerHard:
        const Color.fromRGBO(255, 255, 255, 0.156),
    ColorsName.mainTextColor: const Color.fromRGBO(171, 190, 190, 1),
    ColorsName.mainTextActive: const Color.fromRGBO(255, 255, 255, 1),
    ColorsName.boxHover: const Color.fromRGBO(82, 95, 225, 0.1),
    ColorsName.boxActive: const Color.fromRGBO(82, 95, 225, 0.15),
    ColorsName.mainIcon: const Color.fromRGBO(171, 190, 190, 1),
    ColorsName.searchBox: const Color.fromRGBO(255, 255, 255, 0.115),
  };

  @override
  Map<ColorsName, Color> build() {
    return lightColors;
  }

  void switchColors() {
    final isDarkTheme = ref.watch(themeStateProvider);
    if (isDarkTheme) {
      state = darkColors;
    } else {
      state = lightColors;
    }
  }
}

enum ColorsName {
  whiteColor,
  silverColor,
  grayBlueColor,
  lGrayColor,
  grayColor,
  dGrayColor,
  blackColor,
  primaryLightColor,
  primaryLightHoverColor,
  primaryLightActiveColor,
  primaryColor,
  primaryHoverColor,
  primaryActiveColor,
  primaryDarkColor,
  transparencyLayerSoft,
  transparencyLayerHard,
  mainTextColor,
  mainTextActive,
  boxHover,
  boxActive,
  mainIcon,
  searchBox,
}
