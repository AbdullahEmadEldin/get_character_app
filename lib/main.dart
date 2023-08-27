import 'package:flutter/material.dart';
import 'package:get_character_app/Utilities/app_router.dart';

void main() {
  runApp(const CharactersApp());
}

class CharactersApp extends StatelessWidget {
  const CharactersApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: routeGenerator,
    );
  }
}
