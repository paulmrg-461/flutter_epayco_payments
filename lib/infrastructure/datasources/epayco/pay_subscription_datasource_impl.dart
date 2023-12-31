import 'dart:async';

import 'package:flutter_epayco_payments/core/helpers/http_adapter.dart';
import 'package:flutter_epayco_payments/core/utils/constants/epayco_constants.dart';
import 'package:flutter_epayco_payments/domain/datasources/epayco/pay_subscription_datasource.dart';

import 'package:flutter_epayco_payments/domain/entities/epayco/pay_subscription_response.dart';
import 'package:flutter_epayco_payments/domain/entities/epayco/subscription_request.dart';

class PaySubscriptionDatasourceImpl implements PaySubscriptionDatasource {
  final HttpAdapter httpAdapter;
  PaySubscriptionDatasourceImpl(this.httpAdapter);
  @override
  Future<PaySubscriptionResponse> paySubscription(
      SubscriptionRequest subscriptionRequest) async {
    final ipAddressResp = await httpAdapter.httpGetResponse(
        uri: EpaycoConstants.getIpAddressUrl, withBaseUrl: false);

    final response = await httpAdapter.httpPostResponse(
        uri: 'pay-subscription',
        body: subscriptionRequestToJson(
            subscriptionRequest.copyWith(ip: ipAddressResp['ip'])),
        headers: EpaycoConstants.headers);

    return PaySubscriptionResponse.fromJson(response);
  }
}
