import 'package:flutter_epayco_payments/domain/entities/entities.dart';
import 'package:flutter_epayco_payments/domain/entities/epayco/pay_subscription_response.dart';

abstract class PaySubscriptionRepository {
  Future<PaySubscriptionResponse> paySubscription(
      SubscriptionRequest subscriptionRequest);
}
