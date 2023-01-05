part of 'models.dart';

class Coffee {
  Coffee({
    required this.title,
    required this.description,
    required this.ingredients,
    required this.image,
    required this.id,
  });

  String title;
  String description;
  List<String> ingredients;
  String image;
  int id;

  factory Coffee.fromJson(Map<String, dynamic> json) => Coffee(
        title: json["title"],
        description: json["description"],
        ingredients: List<String>.from(json["ingredients"].map((x) => x)),
        image: json["image"],
        id: json["id"],
      );
}
