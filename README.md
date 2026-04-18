# Fruit Hub 🍓🛒

**Fruit Hub** is a modern Flutter e-commerce app for browsing fresh fruits, managing cart items, authenticating users, and placing orders with checkout and PayPal integration.

It follows a clean, feature-first architecture with `flutter_bloc`, `get_it`, and Firebase services.

---

## ✨ Highlights

- Feature-based architecture (`data` / `domain` / `presentation`)
- `flutter_bloc` state management for auth, products, cart, and orders
- Firebase Authentication (Email/Password, Google, Facebook)
- Cloud Firestore integration for users, products, and orders
- Multi-step checkout flow with shipping/address/payment steps
- PayPal checkout integration
- Arabic + English localization (default locale: Arabic)
- Reusable core widgets, helpers, and service abstractions

---

## 🧱 Architecture & Design

The app is organized by **features** under `lib/features/` and shared infrastructure under `lib/core/`.

### Layers used per feature

- **Presentation**: views, widgets, cubits/blocs
- **Domain**: entities and repository contracts
- **Data**: models and repository implementations

### Core patterns

- **Repository pattern** for data access abstraction
- **Dependency injection** via `get_it` in `lib/core/services/get_it_service.dart`
- **State management** via `Cubit` (`flutter_bloc`)
- **Centralized navigation** with named routes in `lib/core/helpers/on_generate_routes.dart`
- **Service abstraction** for database/auth providers

---

## 📦 Tech Stack

- **Framework:** Flutter (Dart SDK `^3.7.0`)
- **State Management:** `flutter_bloc`
- **DI:** `get_it`
- **Backend:** Firebase Auth + Cloud Firestore
- **Payments:** `flutter_paypal_payment`
- **Functional Utilities:** `dartz` (`Either`)
- **Persistence:** `shared_preferences`
- **Localization:** `flutter_localizations` + generated `S`
- **UI Helpers:** `cached_network_image`, `shimmer`, `skeletonizer`, `svg_flutter`

---

## 🗂️ Project Structure

```text
lib/
├── core/
│   ├── cubits/
│   ├── entities/
│   ├── errors/
│   ├── helpers/
│   ├── models/
│   ├── repos/
│   ├── services/
│   ├── utils/
│   └── widgets/
├── features/
│   ├── splash/
│   ├── on_boarding/
│   ├── auth/
│   ├── main/         # home, products, cart, profile tab
│   ├── checkout/
│   └── best_selling/
├── generated/
├── l10n/
├── firebase_options.dart
└── main.dart
```

---

## 🚀 Features Overview

### 1) Splash & Onboarding
- Splash decides first route based on onboarding + auth status
- Onboarding persisted in `SharedPreferences`

### 2) Authentication
- Sign up and login with email/password
- Social auth with Google and Facebook
- User data persisted in Firestore and cached locally

### 3) Main Experience
- Bottom navigation (Home, Products, Cart, Profile)
- Home shows featured visuals and best-selling products preview
- Products list fetched from Firestore with loading skeletons

### 4) Cart
- Add/remove/decrease item quantity
- Max quantity handling and UX feedback with snack bars
- Dynamic total payment display

### 5) Checkout & Orders
- Step-based checkout: shipping → address → payment → review
- Pay on delivery / in advance selection
- PayPal payment flow support
- Order serialization and storage in Firestore

---

## 🔧 Setup & Run

### 1) Prerequisites

- Flutter SDK installed and available on PATH
- Firebase project configured
- Platform tooling (Android Studio/Xcode/etc.) depending on target

### 2) Configure secrets

This project expects:

- `.env` file in repository root (loaded in `main.dart`)
- `lib/app_vault.dart` for secret constants used by:
  - `lib/firebase_options.dart` (Firebase API keys)
  - checkout PayPal credentials

Firebase configuration is required for each target platform. Use one of these approaches:

- Run `flutterfire configure` to generate/update Firebase platform setup.
- Or manually add Firebase config files:
  - `android/app/google-services.json`
  - `ios/Runner/GoogleService-Info.plist`

Example `.env` (placeholder values):

```env
APP_NAME=FruitHub
APP_ENV=development
```

Example `lib/app_vault.dart` (placeholder values only):

```dart
const kFirebaseAndroidAPIKey = 'YOUR_ANDROID_FIREBASE_API_KEY';
const kFirebaseIOSAPIKey = 'YOUR_IOS_FIREBASE_API_KEY';
const kPaypalClientID = 'YOUR_PAYPAL_CLIENT_ID';
const kPaypalClientSecret = 'YOUR_PAYPAL_CLIENT_SECRET';
```

Create your own secure values and **do not commit secrets**.

### 3) Install dependencies

```bash
flutter pub get
```

### 4) Run app

```bash
flutter run
```

---

## ✅ Quality Commands

```bash
flutter analyze .
flutter test
```

---

## 🌍 Localization

- Localization files are under `lib/l10n/`
  - `intl_ar.arb`
  - `intl_en.arb`
- App starts with Arabic locale by default (`Locale('ar')` in `main.dart`).

---

## 🧭 Routing

All routes are registered in:

- `lib/core/helpers/on_generate_routes.dart`

Each view exposes a static `routeName`, and navigation is done with named routes (`Navigator.pushNamed` / `pushReplacementNamed`).

---

## 🧩 Dependency Injection

DI container is initialized once in `main.dart` via:

- `setupGetIt()`

Registered dependencies include:

- `FirebaseAuthService`
- `DatabaseService` (`FireStoreService`)
- `AuthRepo`
- `ProductsRepo`
- `OrdersRepo`

---

## 📌 Notes

- The `best_selling` dedicated screen currently exists but is still minimal; most best-selling UX is shown inside Home.
- The app uses the **Cairo** font family from `assets/fonts/`.

---

## 🤝 Contributing

1. Create a feature branch
2. Keep architecture consistent (`feature/data-domain-presentation`)
3. Run analyze/tests before opening PR
4. Avoid committing any secret/config keys

---

## 📄 License

This repository currently has no explicit license file. Add one if you plan to distribute or open-source the project publicly.
