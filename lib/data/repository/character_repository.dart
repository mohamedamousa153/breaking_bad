import '../api/characters_api.dart';
import '../model/characters.dart';

class CharactersRepository {
  final CharactersApi charactersApi;

  CharactersRepository(this.charactersApi);
  Future<List<Character>> getAllCharaters() async {
    final characters = await charactersApi.getAllCharaters();
    return characters
        .map((character) => Character.fromJason(character))
        .toList();
  }
}
