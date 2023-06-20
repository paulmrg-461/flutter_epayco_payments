import 'package:flutter_epayco_payments/domain/datasources/epayco/credit_card_payment_datasource.dart';
import 'package:flutter_epayco_payments/domain/entities/epayco/credit_card_payment_request.dart';

import 'package:flutter_epayco_payments/domain/entities/epayco/credit_card_payment_response.dart';
import 'package:flutter_epayco_payments/domain/repositories/epayco/credit_card_payment_respository.dart';

class CreditCardPaymentRepositoryImpl implements CreditCardPaymentRepository {
  final CreditCardPaymentDatasource creditCardPaymentDatasource;

  CreditCardPaymentRepositoryImpl({required this.creditCardPaymentDatasource});

  @override
  Future<CreditCardPaymentResponse> creditCardPayment(
          CreditCardPaymentRequest creditCardPaymentRequest) =>
      creditCardPaymentDatasource.creditCardPayment(creditCardPaymentRequest);
}
