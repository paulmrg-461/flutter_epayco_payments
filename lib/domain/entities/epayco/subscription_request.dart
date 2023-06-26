import 'dart:convert';

import 'package:flutter_epayco_payments/domain/entities/epayco/card_request.dart';
import 'package:flutter_epayco_payments/domain/entities/user_entity.dart';

String subscriptionRequestToJson(SubscriptionRequest data) =>
    jsonEncode(data.toJson());

class SubscriptionRequest {
  SubscriptionRequest({
    required this.idPlan,
    this.ip,
    this.urlConfirmation,
    this.methodConfirmation,
    required this.userEntity,
    required this.cardRequest,
  });

  final String? idPlan;
  final String? ip;
  final String? urlConfirmation;
  final String? methodConfirmation;
  final UserEntity? userEntity;
  final CardRequest cardRequest;

  SubscriptionRequest copyWith(
          {String? idPlan,
          String? ip,
          String? urlConfirmation,
          String? methodConfirmation,
          UserEntity? userEntity,
          CardRequest? cardRequest}) =>
      SubscriptionRequest(
        idPlan: idPlan ?? this.idPlan,
        ip: ip ?? this.ip,
        urlConfirmation: urlConfirmation ?? this.urlConfirmation,
        methodConfirmation: methodConfirmation ?? this.methodConfirmation,
        userEntity: userEntity ?? this.userEntity,
        cardRequest: cardRequest ?? this.cardRequest,
      );

  Map<String, dynamic> toJson() => {
        "id_plan": idPlan,
        "ip": ip,
        "url_confirmation": urlConfirmation,
        "method_confirmation": methodConfirmation,
        "name": userEntity?.name,
        "last_name": userEntity?.lastName,
        "email": userEntity?.email,
        "doc_type": userEntity?.documentType,
        "doc_number": userEntity?.documentNumber,
        "phone": userEntity?.phoneNumber,
        "card_number": cardRequest.cardNumber,
        "card_exp_year": cardRequest.cardExpYear,
        "card_exp_month": cardRequest.cardExpMonth,
        "card_cvc": cardRequest.cardCvc,
      };
}
