import 'package:flutter_epayco_payments/core/helpers/http_adapter.dart';
import 'package:flutter_epayco_payments/core/utils/constants/epayco_constants.dart';
import 'package:flutter_epayco_payments/domain/entities/entities.dart';
import 'package:flutter_epayco_payments/domain/entities/epayco/credit_card_payment_response.dart';
import 'package:flutter_epayco_payments/domain/entities/epayco/pay_subscription_response.dart';
import 'package:flutter_epayco_payments/domain/entities/epayco/pse_payment_response.dart';
import 'package:flutter_epayco_payments/infrastructure/datasources/datasources.dart';
import 'package:flutter_epayco_payments/infrastructure/repositories/repositories.dart';

class EpaycoService {
  final String baseUrl;
  final HttpAdapter httpAdapter;
  late CashPaymentRepositoryImpl cashPaymentRepository;
  late PaySubscriptionRepositoryImpl paySubscriptionRepository;
  late CreditCardPaymentRepositoryImpl creditCardPaymentRepository;
  late PsePaymentRepositoryImpl psePaymentRepository;
  EpaycoService({this.baseUrl = 'http://127.0.0.1:1616'})
      : httpAdapter = HttpAdapter(baseUrl: baseUrl) {
    cashPaymentRepository = CashPaymentRepositoryImpl(
        cashPaymentDatasource: CashPaymentDatasourceImpl(httpAdapter));

    paySubscriptionRepository = PaySubscriptionRepositoryImpl(
        paySubscriptionDatasource: PaySubscriptionDatasourceImpl(httpAdapter));

    creditCardPaymentRepository = CreditCardPaymentRepositoryImpl(
        creditCardPaymentDatasource:
            CreditCardPaymentDatasourceImpl(httpAdapter));

    psePaymentRepository = PsePaymentRepositoryImpl(
        psePaymentDatasource: PsePaymentDatasourceImpl(httpAdapter));
  }

  Future<PaySubscriptionResponse> subscribeToPlan(
          {required subscriptionRequest,
          required UserEntity userEntity,
          required String idPlan}) async =>
      await paySubscriptionRepository
          .paySubscription(subscriptionRequest.copyWith(
        userEntity: userEntity,
        idPlan: idPlan,
        urlConfirmation: '$baseUrl/subscription-status',
        methodConfirmation: EpaycoConstants.methodConfirmation,
      ));

  Future<CreditCardPaymentResponse> creditCardPayment(
          {required CreditCardPaymentRequest creditCardPaymentRequest,
          required UserEntity userEntity}) async =>
      await creditCardPaymentRepository.creditCardPayment(
          creditCardPaymentRequest.copyWith(
              userEntity: userEntity,
              urlResponse: '$baseUrl/',
              urlConfirmation: '$baseUrl/subscription-status',
              methodConfirmation: EpaycoConstants.methodConfirmation));

  Future<PsePaymentResponse> psePayment(
          PsePaymentRequest psePaymentRequest) async =>
      await psePaymentRepository.psePayment(psePaymentRequest.copyWith(
          urlResponse: '$baseUrl/',
          urlConfirmation: '$baseUrl/subscription-status',
          methodConfirmation: EpaycoConstants.methodConfirmation));

  Future<BankListResponse> getBanks() async =>
      await psePaymentRepository.getBanks();

  Future<CashPaymentResponse> cashPayment(
          {required CashPaymentRequest cashPaymentRequest,
          required UserEntity userEntity}) async =>
      await cashPaymentRepository.cashPayment(cashPaymentRequest.copyWith(
          userEntity: userEntity,
          urlResponse: '$baseUrl/',
          urlConfirmation: '$baseUrl/subscription-status',
          methodConfirmation: EpaycoConstants.methodConfirmation));

  Future<CashMethodsResponse> getCashMethods() async =>
      await cashPaymentRepository.getCashMethods();
}
