import 'package:flutter_epayco_payments/domain/datasources/epayco/pay_subscription_datasource.dart';
import 'package:flutter_epayco_payments/domain/entities/entities.dart';
import 'package:flutter_epayco_payments/domain/repositories/epayco/pay_subscription_respository.dart';

class PaySubscriptionRepositoryImpl implements PaySubscriptionRepository {
  final PaySubscriptionDatasource paySubscriptionDatasource;

  PaySubscriptionRepositoryImpl({required this.paySubscriptionDatasource});

  @override
  Future<PaySubscriptionResponse> paySubscription(
          SubscriptionRequest subscriptionRequest) =>
      paySubscriptionDatasource.paySubscription(subscriptionRequest);
}
