import 'package:flutter_epayco_payments/core/utils/constants/epayco_constants.dart';
import 'package:flutter_epayco_payments/domain/entities/entities.dart';
import 'package:flutter_epayco_payments/infrastructure/datasources/datasources.dart';
import 'package:flutter_epayco_payments/infrastructure/repositories/repositories.dart';

class EpaycoService {
  final PaySubscriptionRepositoryImpl paySubscriptionRepository =
      PaySubscriptionRepositoryImpl(
          paySubscriptionDatasource: PaySubscriptionDatasourceImpl());

  final CreditCardPaymentRepositoryImpl creditCardPaymentRepository =
      CreditCardPaymentRepositoryImpl(
          creditCardPaymentDatasource: CreditCardPaymentDatasourceImpl());

  final PsePaymentRepositoryImpl psePaymentRepository =
      PsePaymentRepositoryImpl(
          psePaymentDatasource: PsePaymentDatasourceImpl());

  Future<PaySubscriptionResponse> subscribeToPlan(
          {required subscriptionRequest,
          required UserEntity userEntity,
          required String idPlan}) async =>
      await paySubscriptionRepository
          .paySubscription(subscriptionRequest.copyWith(
        userEntity: userEntity,
        idPlan: idPlan,
        urlConfirmation: EpaycoConstants.urlConfirmation,
        methodConfirmation: EpaycoConstants.methodConfirmation,
      ));

  Future<CreditCardPaymentResponse> creditCardPayment(
          {required CreditCardPaymentRequest creditCardPaymentRequest,
          required UserEntity userEntity}) async =>
      await creditCardPaymentRepository.creditCardPayment(
          creditCardPaymentRequest.copyWith(
              userEntity: userEntity,
              urlResponse: EpaycoConstants.urlResponse,
              urlConfirmation: EpaycoConstants.urlConfirmation,
              methodConfirmation: EpaycoConstants.methodConfirmation));

  Future<PsePaymentResponse> psePayment(
          PsePaymentRequest psePaymentRequest) async =>
      await psePaymentRepository.psePayment(psePaymentRequest.copyWith(
          urlResponse: EpaycoConstants.urlResponse,
          urlConfirmation: EpaycoConstants.urlConfirmation,
          methodConfirmation: EpaycoConstants.methodConfirmation));

  Future<BankListResponse> getBanks() async =>
      await psePaymentRepository.getBanks();
}
