import 'package:flutter_epayco_payments/domain/datasources/datasources.dart';
import 'package:flutter_epayco_payments/domain/entities/epayco/cash_methods_response.dart';
import 'package:flutter_epayco_payments/domain/entities/epayco/cash_payment_request.dart';
import 'package:flutter_epayco_payments/domain/entities/epayco/cash_payment_response.dart';

import 'package:flutter_epayco_payments/domain/repositories/repositories.dart';

class CashPaymentRepositoryImpl implements CashPaymentRepository {
  final CashPaymentDatasource cashPaymentDatasource;

  CashPaymentRepositoryImpl({required this.cashPaymentDatasource});

  @override
  Future<CashPaymentResponse> cashPayment(
          CashPaymentRequest cashPaymentRequest) =>
      cashPaymentDatasource.cashPayment(cashPaymentRequest);
  @override
  Future<CashMethodsResponse> getCashMethods() =>
      cashPaymentDatasource.getCashMethods();
}
