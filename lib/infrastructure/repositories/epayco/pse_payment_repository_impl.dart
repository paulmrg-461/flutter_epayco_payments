import 'package:flutter_epayco_payments/domain/datasources/epayco/pse_payment_datasource.dart';
import 'package:flutter_epayco_payments/domain/entities/entities.dart';
import 'package:flutter_epayco_payments/domain/repositories/epayco/pse_payment_respository.dart';

class PsePaymentRepositoryImpl implements PsePaymentRepository {
  final PsePaymentDatasource psePaymentDatasource;

  PsePaymentRepositoryImpl({required this.psePaymentDatasource});

  @override
  Future<PsePaymentResponse> psePayment(PsePaymentRequest psePaymentRequest) =>
      psePaymentDatasource.psePayment(psePaymentRequest);

  @override
  Future<BankListResponse> getBanks() => psePaymentDatasource.getBanks();
}
