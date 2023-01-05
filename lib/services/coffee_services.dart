part of 'services.dart';

class CoffeeServices {
  static Future<List<Coffee>> getCoffeeData() async {
    try {
      final reponse = await Dio().get(
        'https://api.sampleapis.com/coffee/hot',
      );
      final json = reponse.data;

      if (reponse.statusCode == 200) {
        List<Coffee> result =
            (json as Iterable).map((e) => Coffee.fromJson(e)).toList();

        return result;
      } else if (reponse.statusCode == 404) {
        return throw Exception(json['message']);
      } else {
        return throw Exception(json);
      }
    } catch (e) {
      rethrow;
    }
  }
}
