import 'package:flutter_epayco_payments/domain/entities/entities.dart';

abstract class CreditCardPaymentDatasource {
  Future<CreditCardPaymentResponse> creditCardPayment(
      CreditCardPaymentRequest creditCardPaymentRequest);
}
