import 'package:flutter_epayco_payments/domain/entities/epayco/bank_list_response.dart';
import 'package:flutter_epayco_payments/domain/entities/epayco/pse_payment_request.dart';
import 'package:flutter_epayco_payments/domain/entities/epayco/pse_payment_response.dart';

abstract class PsePaymentDatasource {
  Future<PsePaymentResponse> psePayment(PsePaymentRequest psePaymentRequest);
  Future<BankListResponse> getBanks();
}
