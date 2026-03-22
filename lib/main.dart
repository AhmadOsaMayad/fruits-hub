import 'package:flutter/material.dart';
import 'package:fruit_hub/core/helpers/on_generate_routes.dart';
import 'package:fruit_hub/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SplashView.routeName,
      debugShowCheckedModeBanner: false,
    );
  }
}
