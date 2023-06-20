import 'package:flutter_epayco_payments/domain/entities/epayco/credit_card_payment_request.dart';
import 'package:flutter_epayco_payments/domain/entities/epayco/credit_card_payment_response.dart';

abstract class CreditCardPaymentRepository {
  Future<CreditCardPaymentResponse> creditCardPayment(
      CreditCardPaymentRequest creditCardPaymentRequest);
}
