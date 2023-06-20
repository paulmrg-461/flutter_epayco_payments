import 'dart:async';

import 'package:flutter_epayco_payments/core/helpers/http_adapter.dart';
import 'package:flutter_epayco_payments/core/utils/constants/epayco_constants.dart';
import 'package:flutter_epayco_payments/domain/datasources/epayco/pse_payment_datasource.dart';
import 'package:flutter_epayco_payments/domain/entities/entities.dart';

class PsePaymentDatasourceImpl implements PsePaymentDatasource {
  final HttpAdapter epaycoHttpRequest =
      HttpAdapter(baseUrl: EpaycoConstants.baseUrl);
  @override
  Future<PsePaymentResponse> psePayment(
      PsePaymentRequest psePaymentRequest) async {
    final ipAddressResp = await epaycoHttpRequest.httpGetResponse(
        uri: EpaycoConstants.getIpAddressUrl, withBaseUrl: false);

    final response = await epaycoHttpRequest.httpPostResponse(
        uri: 'pse-payment',
        body: psePaymentRequestToJson(
            psePaymentRequest.copyWith(ip: ipAddressResp['ip'])),
        headers: EpaycoConstants.headers);

    return PsePaymentResponse.fromJson(response);
  }

  @override
  Future<BankListResponse> getBanks() async =>
      BankListResponse.fromJson(await epaycoHttpRequest.httpGetResponse(
          uri: 'list-of-banks', headers: EpaycoConstants.headers));
}
