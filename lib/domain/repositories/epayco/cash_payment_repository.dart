import 'package:flutter_epayco_payments/domain/entities/entities.dart';

abstract class CashPaymentRepository {
  Future<CashPaymentResponse> cashPayment(
      CashPaymentRequest cashPaymentRequest);
  Future<CashMethodsResponse> getCashMethods();
}
