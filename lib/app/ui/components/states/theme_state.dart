import 'package:flutter_structure_web_app/core/theme/app_colors.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_state.g.dart';

@riverpod
class ThemeState extends _$ThemeState {
  @override
  bool build() {
    return false;
  }

  void switchTheme() {
    state = !state;
    ref.watch(colorsStateProvider.notifier).switchColors();
  }

  void selectIsDark(bool value) {
    state = value;
    ref.watch(colorsStateProvider.notifier).switchColors();
  }
}
