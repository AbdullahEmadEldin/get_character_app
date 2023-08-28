// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get_character_app/data_layer/models/character_model.dart';
import 'package:get_character_app/data_layer/services/characters_web_services.dart';

class CharactersRepository {
  final CharactersWebServices charactersWebServices;
  CharactersRepository({
    required this.charactersWebServices,
  });
  Future<List<dynamic>> getAllCharacters() async {
    final characters = await charactersWebServices.getAllCharacters();
    return characters
        .map((character) => Character.fromJson(character))
        .toList();
  }
}
