import 'dart:convert';

PlanEntity planEntityFromJson(String str) =>
    PlanEntity.fromJson(json.decode(str));

String planEntityToJson(PlanEntity data) => json.encode(data.toJson());

class PlanEntity {
  final String id;
  final int importance;
  final String name;
  final String imagePath;
  final Features features;
  final String price;
  final String currency;
  final String typePlan;

  PlanEntity({
    required this.id,
    required this.importance,
    required this.name,
    required this.imagePath,
    required this.features,
    required this.price,
    required this.currency,
    required this.typePlan,
  });

  PlanEntity copyWith({
    String? id,
    int? importance,
    String? name,
    String? imagePath,
    Features? features,
    String? price,
    String? currency,
    String? typePlan,
  }) =>
      PlanEntity(
        id: id ?? this.id,
        importance: importance ?? this.importance,
        name: name ?? this.name,
        imagePath: imagePath ?? this.imagePath,
        features: features ?? this.features,
        price: price ?? this.price,
        currency: currency ?? this.currency,
        typePlan: typePlan ?? this.typePlan,
      );

  factory PlanEntity.fromJson(Map<String, dynamic> json) => PlanEntity(
        id: json["id"],
        importance: json["importance"],
        name: json["name"],
        imagePath: json["image_path"],
        features: Features.fromJson(json["features"]),
        price: json["price"],
        currency: json["currency"],
        typePlan: json["type_plan"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "importance": importance,
        "name": name,
        "image_path": imagePath,
        "features": features.toJson(),
        "price": price,
        "currency": currency,
        "type_plan": typePlan,
      };
}

class Features {
  final List<String> characteristics;

  Features({
    required this.characteristics,
  });

  Features copyWith({
    List<String>? characteristics,
  }) =>
      Features(
        characteristics: characteristics ?? this.characteristics,
      );

  factory Features.fromJson(Map<String, dynamic> json) => Features(
        characteristics:
            List<String>.from(json["characteristics"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "characteristics": List<dynamic>.from(characteristics.map((x) => x)),
      };
}
