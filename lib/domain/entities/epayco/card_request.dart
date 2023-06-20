import 'dart:convert';

CardRequest cardRequestFromJson(String str) =>
    CardRequest.fromJson(json.decode(str));

String cardRequestToJson(CardRequest data) => jsonEncode(data.toJson());

class CardRequest {
  CardRequest({
    required this.cardNumber,
    required this.cardExpYear,
    required this.cardExpMonth,
    required this.cardCvc,
    this.dues,
  });

  String cardNumber;
  String cardExpYear;
  String cardExpMonth;
  String cardCvc;
  String? dues = "1";

  factory CardRequest.fromJson(Map<String, dynamic> json) => CardRequest(
        cardNumber: json["card_number"],
        cardExpYear: json["card_exp_year"],
        cardExpMonth: json["card_exp_month"],
        cardCvc: json["card_cvc"],
        dues: json["dues"],
      );

  Map<String, dynamic> toJson() => {
        "card_number": cardNumber,
        "card_exp_year": cardExpYear,
        "card_exp_month": cardExpMonth,
        "card_cvc": cardCvc,
        "dues": dues,
      };
}
