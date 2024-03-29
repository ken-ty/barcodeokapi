// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

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

String _$CounterHash() => r'4243b34530f53accfd9014a9f0e316fe304ada3e';

/// Annotating a class by `@riverpod` defines a new shared state for your application,
/// accessible using the generated [counterProvider].
/// This class is both responsible for initializing the state (through the [build] method)
/// and exposing ways to modify it (cf [increment]).
///
/// Copied from [Counter].
final counterProvider = AutoDisposeNotifierProvider<Counter, int>(
  Counter.new,
  name: r'counterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$CounterHash,
);
typedef CounterRef = AutoDisposeNotifierProviderRef<int>;

abstract class _$Counter extends AutoDisposeNotifier<int> {
  @override
  int build();
}
