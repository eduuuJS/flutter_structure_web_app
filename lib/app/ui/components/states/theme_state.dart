import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_state.g.dart';

@riverpod
class ThemeState extends _$ThemeState {
  @override
  ThemeDataType build() {
    return ThemeDataType.light;
  }

  void switchTheme() {
    if (state == ThemeDataType.dark) {
      state = ThemeDataType.light;
    } else {
      state = ThemeDataType.dark;
    }
  }
}

enum ThemeDataType { light, dark }
