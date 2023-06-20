import 'dart:convert';

BankListResponse bankListResponseFromJson(String str) =>
    BankListResponse.fromJson(json.decode(str));

String bankListResponseToJson(BankListResponse data) =>
    json.encode(data.toJson());

class BankListResponse {
  BankListResponse({
    this.data,
    this.enpruebas,
    this.lastAction,
    this.success,
    this.textResponse,
    this.titleResponse,
  });

  final List<Datum>? data;
  final String? enpruebas;
  final String? lastAction;
  final bool? success;
  final String? textResponse;
  final String? titleResponse;

  BankListResponse copyWith({
    List<Datum>? data,
    String? enpruebas,
    String? lastAction,
    bool? success,
    String? textResponse,
    String? titleResponse,
  }) =>
      BankListResponse(
        data: data ?? this.data,
        enpruebas: enpruebas ?? this.enpruebas,
        lastAction: lastAction ?? this.lastAction,
        success: success ?? this.success,
        textResponse: textResponse ?? this.textResponse,
        titleResponse: titleResponse ?? this.titleResponse,
      );

  factory BankListResponse.fromJson(Map<String, dynamic> json) =>
      BankListResponse(
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        enpruebas: json["enpruebas"],
        lastAction: json["last_action"],
        success: json["success"],
        textResponse: json["text_response"],
        titleResponse: json["title_response"],
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "enpruebas": enpruebas,
        "last_action": lastAction,
        "success": success,
        "text_response": textResponse,
        "title_response": titleResponse,
      };
}

class Datum {
  Datum({
    this.bankCode,
    this.bankName,
  });

  final String? bankCode;
  final String? bankName;

  Datum copyWith({
    String? bankCode,
    String? bankName,
  }) =>
      Datum(
        bankCode: bankCode ?? this.bankCode,
        bankName: bankName ?? this.bankName,
      );

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        bankCode: '${json["bankCode"]}',
        bankName: json["bankName"],
      );

  Map<String, dynamic> toJson() => {
        "bankCode": bankCode,
        "bankName": bankName,
      };
}
