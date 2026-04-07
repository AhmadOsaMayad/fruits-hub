# Fruit Hub workspace instructions

## What this workspace is
- Flutter app using `flutter_bloc`, `get_it`, and Firebase.
- App structure is domain-driven under `lib/features/` and shared services under `lib/core/`.
- Navigation is handled with a centralized `lib/core/helpers/on_generate_routes.dart` and static `routeName` constants.
- Dependency injection is configured in `lib/core/services/get_it_service.dart` and initialized in `lib/main.dart`.
- The app loads environment variables from `.env` and uses Arabic locale by default.

## Key conventions for Copilot
- Keep changes aligned with existing folder structure:
  - `lib/features/<feature>/presentation/...`
  - `lib/features/<feature>/domain/...`
  - `lib/features/<feature>/data/...`
- Prefer feature-level cubits/blocs and repository injections via `getIt.get<T>()`.
- Register new services, repos, or singletons in `lib/core/services/get_it_service.dart`.
- Add new routes by updating `onGenerateRoutes` and using `static const routeName` on view classes.
- Preserve view/widget separation: views assemble scaffold-level UI while widgets contain reusable components.
- Avoid large architectural changes unless asked; prefer small, idiomatic Flutter edits.

## Run / build / test commands
- `flutter pub get`
- `flutter run`
- `flutter analyze .`
- `flutter test`
- For Android-specific tasks use `./gradlew` from `android/`.

## Helpful project notes
- The app uses `Firebase.initializeApp` in `main()` with generated `firebase_options.dart`.
- Shared preferences are initialized with `Prefs.init()` before app startup.
- Theme uses the `Cairo` font family from `assets/fonts/`.
- Routes use `Navigator.pushNamed` / `pushReplacementNamed` with named routes.

## Example prompts
- "Add a new feature screen for user settings under `lib/features/settings`, including a view, route, and placeholder logic."
- "Refactor `lib/features/auth/presentation/views/login_view.dart` to use a separate widget for the login form and keep the cubit provider in the view."
- "Register a new `OrdersRepo` in `lib/core/services/get_it_service.dart` and wire it into a `OrdersCubit`."

## Suggested next customization
Create a targeted agent or prompt for Flutter feature implementation in this repo, for example:
- `create-agent feature-creator` to add new features with repo conventions
- `create-prompt flutter-routes` to handle route additions and screen wiring
