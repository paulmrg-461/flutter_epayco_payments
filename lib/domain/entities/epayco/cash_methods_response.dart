// To parse this JSON data, do
//
//     final cashMethodsResponse = cashMethodsResponseFromJson(jsonString);

import 'dart:convert';

class CashMethodsResponse {
  final List<CashMethod>? cashMethods;

  CashMethodsResponse({
    this.cashMethods,
  });

  CashMethodsResponse copyWith({
    List<CashMethod>? cashMethods,
  }) =>
      CashMethodsResponse(
        cashMethods: cashMethods ?? this.cashMethods,
      );

  factory CashMethodsResponse.fromRawJson(String str) =>
      CashMethodsResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CashMethodsResponse.fromJson(Map<String, dynamic> json) =>
      CashMethodsResponse(
        cashMethods: json["cash_methods"] == null
            ? []
            : List<CashMethod>.from(
                json["cash_methods"]!.map((x) => CashMethod.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "cash_methods": cashMethods == null
            ? []
            : List<dynamic>.from(cashMethods!.map((x) => x.toJson())),
      };
}

class CashMethod {
  final String? id;
  final String? name;

  CashMethod({
    this.id,
    this.name,
  });

  CashMethod copyWith({
    String? id,
    String? name,
  }) =>
      CashMethod(
        id: id ?? this.id,
        name: name ?? this.name,
      );

  factory CashMethod.fromRawJson(String str) =>
      CashMethod.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CashMethod.fromJson(Map<String, dynamic> json) => CashMethod(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
