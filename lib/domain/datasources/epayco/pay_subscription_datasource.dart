import 'package:flutter_epayco_payments/domain/entities/epayco/pay_subscription_response.dart';
import 'package:flutter_epayco_payments/domain/entities/epayco/subscription_request.dart';

abstract class PaySubscriptionDatasource {
  Future<PaySubscriptionResponse> paySubscription(
      SubscriptionRequest subscriptionRequest);
}
