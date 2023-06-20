import 'package:flutter_epayco_payments/domain/entities/entities.dart';

abstract class CashPaymentDatasource {
  Future<CashPaymentResponse> cashPayment(
      CashPaymentRequest cashPaymentRequest);

  Future<CashMethodsResponse> getCashMethods();
}
