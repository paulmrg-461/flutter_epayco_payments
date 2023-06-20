import 'package:flutter_epayco_payments/domain/entities/entities.dart';

abstract class PaySubscriptionDatasource {
  Future<PaySubscriptionResponse> paySubscription(
      SubscriptionRequest subscriptionRequest);
}
