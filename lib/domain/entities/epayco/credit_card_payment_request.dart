// To parse this JSON data, do
//
//     final creditCardPaymentRequest = creditCardPaymentRequestFromJson(jsonString);

import 'dart:convert';

import 'package:flutter_epayco_payments/domain/entities/epayco/card_request.dart';
import 'package:flutter_epayco_payments/domain/entities/user_entity.dart';

String creditCardPaymentRequestToJson(CreditCardPaymentRequest data) =>
    jsonEncode(data.toJson());

class CreditCardPaymentRequest {
  CreditCardPaymentRequest({
    this.userEntity,
    required this.cardRequest,
    required this.bill,
    required this.description,
    required this.value,
    required this.tax,
    required this.taxBase,
    required this.currency,
    this.ip,
    this.urlResponse,
    this.urlConfirmation,
    this.methodConfirmation,
    this.useDefaultCardCustomer = true,
  });

  final UserEntity? userEntity;
  final CardRequest cardRequest;
  final String? bill;
  final String? description;
  final String? value;
  final String? tax;
  final String? taxBase;
  final String? currency;
  final String? ip;
  final String? urlResponse;
  final String? urlConfirmation;
  final String? methodConfirmation;
  final bool? useDefaultCardCustomer;

  CreditCardPaymentRequest copyWith({
    UserEntity? userEntity,
    CardRequest? cardRequest,
    String? bill,
    String? description,
    String? value,
    String? tax,
    String? taxBase,
    String? currency,
    String? ip,
    String? urlResponse,
    String? urlConfirmation,
    String? methodConfirmation,
    bool? useDefaultCardCustomer,
  }) =>
      CreditCardPaymentRequest(
        userEntity: userEntity ?? this.userEntity,
        cardRequest: cardRequest ?? this.cardRequest,
        bill: bill ?? this.bill,
        description: description ?? this.description,
        value: value ?? this.value,
        tax: tax ?? this.tax,
        taxBase: taxBase ?? this.taxBase,
        currency: currency ?? this.currency,
        ip: ip ?? this.ip,
        urlResponse: urlResponse ?? this.urlResponse,
        urlConfirmation: urlConfirmation ?? this.urlConfirmation,
        methodConfirmation: methodConfirmation ?? this.methodConfirmation,
        useDefaultCardCustomer:
            useDefaultCardCustomer ?? this.useDefaultCardCustomer,
      );

  Map<String, dynamic> toJson() => {
        "bill": bill,
        "description": description,
        "value": value,
        "tax": tax,
        "tax_base": taxBase,
        "currency": currency,
        "ip": ip,
        "url_response": urlResponse,
        "url_confirmation": urlConfirmation,
        "method_confirmation": methodConfirmation,
        "use_default_card_customer": useDefaultCardCustomer,
        "name": userEntity?.name,
        "last_name": userEntity?.lastName,
        "email": userEntity?.email,
        "doc_type": userEntity?.documentType,
        "doc_number": userEntity?.documentNumber,
        "phone": userEntity?.phone,
        "card_number": cardRequest.cardNumber,
        "card_exp_year": cardRequest.cardExpYear,
        "card_exp_month": cardRequest.cardExpMonth,
        "card_cvc": cardRequest.cardCvc,
        "dues": cardRequest.dues,
      };
}
