import 'dart:async';

import 'package:flutter_epayco_payments/core/helpers/http_adapter.dart';
import 'package:flutter_epayco_payments/core/utils/constants/epayco_constants.dart';
import 'package:flutter_epayco_payments/domain/datasources/datasources.dart';
import 'package:flutter_epayco_payments/domain/entities/entities.dart';

class CashPaymentDatasourceImpl implements CashPaymentDatasource {
  final HttpAdapter epaycoHttpRequest =
      HttpAdapter(baseUrl: EpaycoConstants.baseUrl);
  @override
  Future<CashPaymentResponse> cashPayment(
      CashPaymentRequest cashPaymentRequest) async {
    final ipAddressResp = await epaycoHttpRequest.httpGetResponse(
        uri: EpaycoConstants.getIpAddressUrl, withBaseUrl: false);

    final response = await epaycoHttpRequest.httpPostResponse(
        uri: 'cash-payment',
        body: cashPaymentRequestToJson(
            cashPaymentRequest.copyWith(ip: ipAddressResp['ip'])),
        headers: EpaycoConstants.headers);

    return CashPaymentResponse.fromJson(response);
  }

  @override
  Future<CashMethodsResponse> getCashMethods() async =>
      CashMethodsResponse.fromJson(await epaycoHttpRequest.httpGetResponse(
          uri: 'list-of-cash-methods', headers: EpaycoConstants.headers));
}
