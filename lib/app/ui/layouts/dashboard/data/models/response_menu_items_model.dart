import 'package:flutter_structure_web_app/app/ui/layouts/dashboard/domain/menu_option_model.dart';
import 'package:flutter_structure_web_app/core/utils/mock_data.dart';

class ResponseMenuItemsModel {
  List<MenuItem>? menuItems;

  ResponseMenuItemsModel({
    this.menuItems,
  });

  factory ResponseMenuItemsModel.fromJson(Map<String, dynamic> json) =>
      ResponseMenuItemsModel(
        menuItems: json["menuItems"] == null
            ? []
            : List<MenuItem>.from(
                json["menuItems"]!.map((x) => MenuItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "menuItems": menuItems == null
            ? []
            : List<dynamic>.from(menuItems!.map((x) => x.toJson())),
      };
}

class MenuItem {
  String? route;
  String? nameOption;
  String? icon;
  List<MenuItem>? children;

  MenuItem({
    this.route,
    this.nameOption,
    this.icon,
    this.children,
  });

  factory MenuItem.fromJson(Map<String, dynamic> json) => MenuItem(
        route: json["route"],
        nameOption: json["nameOption"],
        icon: json["icon"],
        children: json["children"] == null
            ? []
            : List<MenuItem>.from(
                json["children"]!.map((x) => MenuItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "route": route,
        "nameOption": nameOption,
        "icon": icon,
        "children": children == null
            ? []
            : List<dynamic>.from(children!.map((x) => x.toJson())),
      };
}

List<MenuOptionDomain> parserResponseMenuRepository(List<MenuItem> items) {
  return (items)
      .map((e) => MenuOptionDomain(
          route: e.route,
          nameOption: e.nameOption,
          icon: iconsMenu[e.icon],
          isActive: false,
          isDesplegable: e.children != null && (e.children ?? []).isNotEmpty,
          isDesplegated: false,
          isChild: e.icon == "",
          children: parserResponseMenuRepository(e.children ?? [])))
      .toList();
}
