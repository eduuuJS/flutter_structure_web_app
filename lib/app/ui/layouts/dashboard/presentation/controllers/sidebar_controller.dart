import 'package:flutter_structure_web_app/app/routes/navigation_service.dart';
import 'package:flutter_structure_web_app/app/ui/layouts/dashboard/data/repositories/menu_options_repository.dart';
import 'package:flutter_structure_web_app/app/ui/layouts/dashboard/domain/menu_option_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'sidebar_controller.g.dart';

@riverpod
class MenuListState extends _$MenuListState {
  List<MenuOptionDomain> initList = [];

  @override
  List<MenuOptionDomain> build() {
    initList =
        ref.read(menuOptionsRepositoryProvider).getAllResponseMenuItems();
    return initList;
  }

  void chooseAction(String route, bool isDesplegable) {
    if (isDesplegable) {
      ref.watch(collapsedStateMenuProvider.notifier).desplegate();
      initList = setDesplegated(route, initList);
    } else {
      NavigationService.replaceTo(route);
      initList = setActive(route, initList);
    }
    state = generateList(initList);
  }

  List<MenuOptionDomain> setActive(
      String route, List<MenuOptionDomain> generalList) {
    generalList = generalList.map((e) {
      if (e.route == route) {
        return e.setActive(true);
      } else {
        return e
            .setActive(false)
            .setChildren(setActive(route, e.children ?? []));
      }
    }).toList();
    return generalList;
  }

  List<MenuOptionDomain> setDesplegated(
      String route, List<MenuOptionDomain> generalList) {
    generalList = generalList.map((e) {
      if (e.route == route) {
        return e.setDesplegated();
      } else {
        return e.setChildren(setDesplegated(route, e.children ?? []));
      }
    }).toList();
    return generalList;
  }

  void collapseAll() {
    initList = initList.map((e) {
      return e.collapse();
    }).toList();
    state = initList;
  }

  List<MenuOptionDomain> generateList(List<MenuOptionDomain> generalList) {
    List<MenuOptionDomain> lister = [];
    for (var element in generalList) {
      lister.add(element);
      if (element.isDesplegable! && element.isDesplegated!) {
        lister.addAll([...(generateList(element.children ?? []))]);
      }
    }
    return lister;
  }
}

@riverpod
class CollapsedStateMenu extends _$CollapsedStateMenu {
  @override
  bool build() {
    return false;
  }

  void switchState() {
    state = !state;
    if (state) {
      ref.watch(menuListStateProvider.notifier).collapseAll();
    }
  }

  void desplegate() {
    state = false;
  }
}
