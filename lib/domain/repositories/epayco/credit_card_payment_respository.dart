import 'package:flutter_epayco_payments/domain/entities/entities.dart';

abstract class CreditCardPaymentRepository {
  Future<CreditCardPaymentResponse> creditCardPayment(
      CreditCardPaymentRequest creditCardPaymentRequest);
}
