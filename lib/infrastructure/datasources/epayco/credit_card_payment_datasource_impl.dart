import 'dart:async';

import 'package:flutter_epayco_payments/core/helpers/http_adapter.dart';
import 'package:flutter_epayco_payments/core/utils/constants/epayco_constants.dart';
import 'package:flutter_epayco_payments/domain/datasources/epayco/credit_card_payment_datasource.dart';
import 'package:flutter_epayco_payments/domain/entities/epayco/credit_card_payment_request.dart';

import 'package:flutter_epayco_payments/domain/entities/epayco/credit_card_payment_response.dart';

class CreditCardPaymentDatasourceImpl implements CreditCardPaymentDatasource {
  final HttpAdapter httpAdapter;
  CreditCardPaymentDatasourceImpl(this.httpAdapter);
  @override
  Future<CreditCardPaymentResponse> creditCardPayment(
      CreditCardPaymentRequest creditCardPaymentRequest) async {
    final ipAddressResp = await httpAdapter.httpGetResponse(
        uri: EpaycoConstants.getIpAddressUrl, withBaseUrl: false);

    final response = await httpAdapter.httpPostResponse(
        uri: 'credit-card-payment',
        body: creditCardPaymentRequestToJson(
            creditCardPaymentRequest.copyWith(ip: ipAddressResp['ip'])),
        headers: EpaycoConstants.headers);

    return CreditCardPaymentResponse.fromJson(response);
  }
}
