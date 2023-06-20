import 'dart:async';

import 'package:flutter_epayco_payments/core/helpers/http_adapter.dart';
import 'package:flutter_epayco_payments/core/utils/constants/epayco_constants.dart';
import 'package:flutter_epayco_payments/domain/datasources/epayco/pay_subscription_datasource.dart';
import 'package:flutter_epayco_payments/domain/entities/entities.dart';

class PaySubscriptionDatasourceImpl implements PaySubscriptionDatasource {
  final HttpAdapter epaycoHttpRequest =
      HttpAdapter(baseUrl: EpaycoConstants.baseUrl);
  @override
  Future<PaySubscriptionResponse> paySubscription(
      SubscriptionRequest subscriptionRequest) async {
    final ipAddressResp = await epaycoHttpRequest.httpGetResponse(
        uri: EpaycoConstants.getIpAddressUrl, headers: EpaycoConstants.headers);

    final response = await epaycoHttpRequest.httpPostResponse(
        uri: 'pay-subscription',
        body: subscriptionRequestToJson(
            subscriptionRequest.copyWith(ip: ipAddressResp['ip'])),
        headers: EpaycoConstants.headers);

    return PaySubscriptionResponse.fromJson(response);
  }
}
