import 'package:flutter_structure_web_app/app/ui/layouts/dashboard/data/models/response_menu_items_model.dart';
import 'package:flutter_structure_web_app/app/ui/layouts/dashboard/domain/menu_option_model.dart';
import 'package:flutter_structure_web_app/core/utils/mock_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'menu_options_repository.g.dart';

abstract class MenuOptionsRepository {
  List<MenuOptionDomain> getAllResponseMenuItems();
}

class FakeMenuOptionsRepository implements MenuOptionsRepository {
  @override
  List<MenuOptionDomain> getAllResponseMenuItems() {
    return parserResponseMenuRepository(
        ResponseMenuItemsModel.fromJson({"menuItems": fakeMenuResponse})
                .menuItems ??
            []);
  }
}

@riverpod
MenuOptionsRepository menuOptionsRepository(MenuOptionsRepositoryRef ref) {
  return FakeMenuOptionsRepository();
}
