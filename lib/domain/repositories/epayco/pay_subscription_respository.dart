import 'package:flutter_epayco_payments/domain/entities/entities.dart';

abstract class PaySubscriptionRepository {
  Future<PaySubscriptionResponse> paySubscription(
      SubscriptionRequest subscriptionRequest);
}
