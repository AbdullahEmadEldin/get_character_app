import 'package:flutter/material.dart';
import 'package:get_character_app/Utilities/app_routes.dart';
import 'package:get_character_app/presentation_layer/pages/character_details_page.dart';
import 'package:get_character_app/presentation_layer/pages/home_page.dart';

Route routeGenerator(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.allCharactersPage:
      return MaterialPageRoute(builder: (_) => HomePage());

    case AppRoutes.characterDetailsPage:
      return MaterialPageRoute(builder: (_) => CharacterDetailsPage());
    default:
      return MaterialPageRoute(builder: (_) => HomePage());
  }
}
