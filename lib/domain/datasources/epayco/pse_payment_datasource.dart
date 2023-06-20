import 'package:flutter_epayco_payments/domain/entities/entities.dart';

abstract class PsePaymentDatasource {
  Future<PsePaymentResponse> psePayment(PsePaymentRequest psePaymentRequest);
  Future<BankListResponse> getBanks();
}
