import 'dart:async';

import 'package:flutter_epayco_payments/core/helpers/http_adapter.dart';
import 'package:flutter_epayco_payments/core/utils/constants/epayco_constants.dart';
import 'package:flutter_epayco_payments/domain/datasources/epayco/pse_payment_datasource.dart';
import 'package:flutter_epayco_payments/domain/entities/entities.dart';

class PsePaymentDatasourceImpl implements PsePaymentDatasource {
  final HttpAdapter httpAdapter;
  PsePaymentDatasourceImpl(this.httpAdapter);
  @override
  Future<PsePaymentResponse> psePayment(
      PsePaymentRequest psePaymentRequest) async {
    final ipAddressResp = await httpAdapter.httpGetResponse(
        uri: EpaycoConstants.getIpAddressUrl, withBaseUrl: false);

    final response = await httpAdapter.httpPostResponse(
        uri: 'pse-payment',
        body: psePaymentRequestToJson(
            psePaymentRequest.copyWith(ip: ipAddressResp['ip'])),
        headers: EpaycoConstants.headers);

    return PsePaymentResponse.fromJson(response);
  }

  @override
  Future<BankListResponse> getBanks() async =>
      BankListResponse.fromJson(await httpAdapter.httpGetResponse(
          uri: 'list-of-banks', headers: EpaycoConstants.headers));
}
