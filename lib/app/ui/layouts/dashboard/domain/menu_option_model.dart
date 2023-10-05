import 'package:flutter/material.dart';

class MenuOptionDomain {
  String? route;
  String? nameOption;
  IconData? icon;
  bool? isActive;
  bool? isDesplegable;
  bool? isDesplegated;
  bool? isChild;
  List<MenuOptionDomain>? children;

  MenuOptionDomain(
      {this.route,
      this.nameOption,
      this.icon,
      this.isActive,
      this.isDesplegable,
      this.isDesplegated,
      this.isChild,
      this.children});

  MenuOptionDomain setActive(bool value) {
    return MenuOptionDomain(
        route: route,
        nameOption: nameOption,
        icon: icon,
        isActive: value,
        isDesplegable: isDesplegable,
        isDesplegated: isDesplegated,
        isChild: isChild,
        children: children);
  }

  MenuOptionDomain setDesplegated() {
    return MenuOptionDomain(
        route: route,
        nameOption: nameOption,
        icon: icon,
        isActive: isActive,
        isDesplegable: isDesplegable,
        isDesplegated: !isDesplegated!,
        isChild: isChild,
        children: children);
  }

  MenuOptionDomain setChildren(List<MenuOptionDomain> list) {
    return MenuOptionDomain(
        route: route,
        nameOption: nameOption,
        icon: icon,
        isActive: isActive,
        isDesplegable: isDesplegable,
        isDesplegated: isDesplegated,
        isChild: isChild,
        children: list);
  }
}
