# Resident Mobile Technical Debt Documentation

## 1. Current State of the Codebase
- **Architecture**: Clean architecture adapted to flutter.
- **State management**: Using BLoC for state management, but there are scattered implementation of locator patters using getIt.
- **Dependencies**: Flutter 3.24 (upgrade to 3.27 is new stable).
- **Testing Coverage**: 72% unit test coverage, lacking widget tests.
- **CI/CD**: Github actions missing iOS stores release pipeline.

## 2. Identified Areas of Technical Debt

- **Large files**: There are several files with +200 lines due to them containing excesive private methods/widgets, we must try to abstract as much widgets as possible and then inject them into de UI.
    - eig. lib/features/billing_settings/presentation/views/billing_settings_view_v2.dart
- **Long BloCs**: The BloC `autoPayBloc()` ` has grown too large and end up havings multiple resposabilities, making it difficult to maintain modify and debug.
    - eig. lib/features/autopay/application/bloc/autopay/autopay_bloc.dart
- **Inconsistent State Management**: There is a mix of `Bloc` and `Global Provider as missusage of locator pattern implemented` usage for state management. This inconsistency makes the code harder to follow, maintain, and violated the separation beetween Business logic and UI logic. We must standardize the bloc pattern implementation.
    - eig. resident_mobile/lib/features/autopay/presentation/widgets/check_info_image.dart:29
- **Overuse of locator persistence for blocs**: Not all the blocs needs to be available gobally via locator, we must try to keep blocs attached to a context in orcder to dispose them properly and avoid state leakage.
    - eig. lib/core/shared/locator/locator.dart
- **State Leakage**: Some views are leaking internal state outside of their scope, tiggering unnecesary rebuilds, we must rebuild just needed components.
- **Lack of context used themes**: Generally text and color themes are being loaded with the locator, creating an un needed instance.
- **Missing barrel files**: Even when barrel pattern is an standard in the project there are multiples intances missing the implementation and resulting in bulky imports.
---

## 3. Impact of Technical Debt

- **Development Speed**: Modification of already existing features  will take longer to implement due to the complexity added to the code.
- **Bug Fixing**: Bugs are harder to trace and fix because of inconsistent state management approaches.
- **Performance**: The app has performance issues, particularly on lower-end devices, due to inefficient list rendering and excessive widget rebuilds.
