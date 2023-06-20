import 'package:flutter_epayco_payments/domain/entities/epayco/cash_methods_response.dart';
import 'package:flutter_epayco_payments/domain/entities/epayco/cash_payment_request.dart';
import 'package:flutter_epayco_payments/domain/entities/epayco/cash_payment_response.dart';

abstract class CashPaymentDatasource {
  Future<CashPaymentResponse> cashPayment(
      CashPaymentRequest cashPaymentRequest);

  Future<CashMethodsResponse> getCashMethods();
}
