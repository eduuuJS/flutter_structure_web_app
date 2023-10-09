// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sidebar_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$seterDashboardTitleHash() =>
    r'ba0608204d4a3ffb01730737bf983b9056eaeec4';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [seterDashboardTitle].
@ProviderFor(seterDashboardTitle)
const seterDashboardTitleProvider = SeterDashboardTitleFamily();

/// See also [seterDashboardTitle].
class SeterDashboardTitleFamily extends Family<AsyncValue<void>> {
  /// See also [seterDashboardTitle].
  const SeterDashboardTitleFamily();

  /// See also [seterDashboardTitle].
  SeterDashboardTitleProvider call(
    String route,
  ) {
    return SeterDashboardTitleProvider(
      route,
    );
  }

  @override
  SeterDashboardTitleProvider getProviderOverride(
    covariant SeterDashboardTitleProvider provider,
  ) {
    return call(
      provider.route,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'seterDashboardTitleProvider';
}

/// See also [seterDashboardTitle].
class SeterDashboardTitleProvider extends AutoDisposeFutureProvider<void> {
  /// See also [seterDashboardTitle].
  SeterDashboardTitleProvider(
    String route,
  ) : this._internal(
          (ref) => seterDashboardTitle(
            ref as SeterDashboardTitleRef,
            route,
          ),
          from: seterDashboardTitleProvider,
          name: r'seterDashboardTitleProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$seterDashboardTitleHash,
          dependencies: SeterDashboardTitleFamily._dependencies,
          allTransitiveDependencies:
              SeterDashboardTitleFamily._allTransitiveDependencies,
          route: route,
        );

  SeterDashboardTitleProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.route,
  }) : super.internal();

  final String route;

  @override
  Override overrideWith(
    FutureOr<void> Function(SeterDashboardTitleRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SeterDashboardTitleProvider._internal(
        (ref) => create(ref as SeterDashboardTitleRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        route: route,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _SeterDashboardTitleProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SeterDashboardTitleProvider && other.route == route;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, route.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SeterDashboardTitleRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `route` of this provider.
  String get route;
}

class _SeterDashboardTitleProviderElement
    extends AutoDisposeFutureProviderElement<void> with SeterDashboardTitleRef {
  _SeterDashboardTitleProviderElement(super.provider);

  @override
  String get route => (origin as SeterDashboardTitleProvider).route;
}

String _$menuListStateHash() => r'c39b3015c1c4f0c65bb8ee71ff1dcb599227163f';

/// See also [MenuListState].
@ProviderFor(MenuListState)
final menuListStateProvider =
    AutoDisposeNotifierProvider<MenuListState, List<MenuOptionDomain>>.internal(
  MenuListState.new,
  name: r'menuListStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$menuListStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MenuListState = AutoDisposeNotifier<List<MenuOptionDomain>>;
String _$collapsedStateMenuHash() =>
    r'655e1ad0b5b1f52ec0a259ae5de6f028b24098c1';

/// See also [CollapsedStateMenu].
@ProviderFor(CollapsedStateMenu)
final collapsedStateMenuProvider =
    AutoDisposeNotifierProvider<CollapsedStateMenu, bool>.internal(
  CollapsedStateMenu.new,
  name: r'collapsedStateMenuProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$collapsedStateMenuHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CollapsedStateMenu = AutoDisposeNotifier<bool>;
String _$titleDashboardStateHash() =>
    r'182aa9e4977bb93dfa3b8c8a699211f6a9c491e1';

/// See also [TitleDashboardState].
@ProviderFor(TitleDashboardState)
final titleDashboardStateProvider =
    AutoDisposeNotifierProvider<TitleDashboardState, String>.internal(
  TitleDashboardState.new,
  name: r'titleDashboardStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$titleDashboardStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TitleDashboardState = AutoDisposeNotifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
