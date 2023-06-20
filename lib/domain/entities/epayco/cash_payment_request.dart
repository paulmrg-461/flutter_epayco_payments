import 'dart:convert';

import 'package:flutter_epayco_payments/domain/entities/entities.dart';

String psePaymentRequestToJson(PsePaymentRequest data) =>
    json.encode(data.toJson());

class PsePaymentRequest {
  PsePaymentRequest({
    required this.userEntity,
    this.invoice,
    this.description,
    this.value,
    this.tax,
    this.taxBase,
    this.currency,
    this.ip,
    this.method,
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
  final String? method;
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
    String? method,
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
        method: method ?? this.method,
        urlResponse: urlResponse ?? this.urlResponse,
        urlConfirmation: urlConfirmation ?? this.urlConfirmation,
        methodConfirmation: methodConfirmation ?? this.methodConfirmation,
      );

  Map<String, dynamic> toJson() => {
        "method": method,
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
        "cell_phone": userEntity?.phoneNumber,
      };
}
