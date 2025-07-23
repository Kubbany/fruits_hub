import 'package:flutter/material.dart';
import 'package:fruits_hub/Features/splash/presentation/views/splash_view.dart';
import 'package:fruits_hub/core/helper/on_generate_route.dart';

void main() {
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
