import 'dart:async';

import 'package:flutter_epayco_payments/core/helpers/http_adapter.dart';
import 'package:flutter_epayco_payments/core/utils/constants/epayco_constants.dart';
import 'package:flutter_epayco_payments/domain/datasources/epayco/credit_card_payment_datasource.dart';
import 'package:flutter_epayco_payments/domain/entities/entities.dart';
import 'package:flutter_epayco_payments/domain/entities/epayco/credit_card_payment_response.dart';

class CreditCardPaymentDatasourceImpl implements CreditCardPaymentDatasource {
  final HttpAdapter epaycoHttpRequest =
      HttpAdapter(baseUrl: EpaycoConstants.baseUrl);
  @override
  Future<CreditCardPaymentResponse> creditCardPayment(
      CreditCardPaymentRequest creditCardPaymentRequest) async {
    final ipAddressResp = await epaycoHttpRequest.httpGetResponse(
        uri: EpaycoConstants.getIpAddressUrl, headers: EpaycoConstants.headers);

    final response = await epaycoHttpRequest.httpPostResponse(
        uri: 'credit-card-payment',
        body: creditCardPaymentRequestToJson(
            creditCardPaymentRequest.copyWith(ip: ipAddressResp['ip'])),
        headers: EpaycoConstants.headers);

    return CreditCardPaymentResponse.fromJson(response);
  }
}
