import 'dart:convert';

import 'package:flutter_epayco_payments/domain/entities/user_entity.dart';

String psePaymentRequestToJson(PsePaymentRequest data) =>
    json.encode(data.toJson());

class PsePaymentRequest {
  PsePaymentRequest({
    required this.userEntity,
    required this.invoice,
    required this.description,
    required this.value,
    required this.currency,
    required this.bank,
    this.tax = '0',
    this.taxBase = '0',
    this.ip,
    this.urlResponse,
    this.urlConfirmation,
    this.methodConfirmation,
  });

  final UserEntity? userEntity;
  final String? invoice;
  final String? description;
  final String? value;
  final String? tax;
  final String? taxBase;
  final String? currency;
  final String? ip;
  final String? bank;
  final String? urlResponse;
  final String? urlConfirmation;
  final String? methodConfirmation;

  PsePaymentRequest copyWith({
    UserEntity? userEntity,
    String? invoice,
    String? description,
    String? value,
    String? tax,
    String? taxBase,
    String? currency,
    String? ip,
    String? bank,
    String? urlResponse,
    String? urlConfirmation,
    String? methodConfirmation,
  }) =>
      PsePaymentRequest(
        userEntity: userEntity ?? this.userEntity,
        invoice: invoice ?? this.invoice,
        description: description ?? this.description,
        value: value ?? this.value,
        tax: tax ?? this.tax,
        taxBase: taxBase ?? this.taxBase,
        currency: currency ?? this.currency,
        ip: ip ?? this.ip,
        bank: bank ?? this.bank,
        urlResponse: urlResponse ?? this.urlResponse,
        urlConfirmation: urlConfirmation ?? this.urlConfirmation,
        methodConfirmation: methodConfirmation ?? this.methodConfirmation,
      );

  Map<String, dynamic> toJson() => {
        "bank": bank,
        "invoice": invoice,
        "description": description,
        "value": value,
        "tax": tax,
        "tax_base": taxBase,
        "currency": currency,
        "ip": ip,
        "url_response": urlResponse,
        "url_confirmation": urlConfirmation,
        "metodoconfirmacion": methodConfirmation,
        "name": userEntity?.name,
        "last_name": userEntity?.lastName,
        "email": userEntity?.email,
        "doc_type": userEntity?.documentType,
        "doc_number": userEntity?.documentNumber,
        "phone": userEntity?.phone,
      };
}
