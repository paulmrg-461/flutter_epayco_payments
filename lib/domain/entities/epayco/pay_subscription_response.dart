// To parse this JSON data, do
//
//     final paySubscriptionResponse = paySubscriptionResponseFromJson(jsonString);

import 'dart:convert';

PaySubscriptionResponse paySubscriptionResponseFromJson(String str) =>
    PaySubscriptionResponse.fromJson(json.decode(str));

String paySubscriptionResponseToJson(PaySubscriptionResponse data) =>
    json.encode(data.toJson());

class PaySubscriptionResponse {
  PaySubscriptionResponse({
    this.data,
    this.lastAction,
    this.subscription,
    this.success,
    this.textResponse,
    this.titleResponse,
  });

  final PaySubscriptionResponseData? data;
  final String? lastAction;
  final Subscription? subscription;
  final bool? success;
  final String? textResponse;
  final String? titleResponse;

  factory PaySubscriptionResponse.fromJson(Map<String, dynamic> json) =>
      PaySubscriptionResponse(
        data: json["data"] == null
            ? null
            : PaySubscriptionResponseData.fromJson(json["data"]),
        lastAction: json["last_action"],
        subscription: json["subscription"] == null
            ? null
            : Subscription.fromJson(json["subscription"]),
        success: json["success"],
        textResponse: json["text_response"],
        titleResponse: json["title_response"],
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
        "last_action": lastAction,
        "subscription": subscription?.toJson(),
        "success": success,
        "text_response": textResponse,
        "title_response": titleResponse,
      };
}

class PaySubscriptionResponseData {
  PaySubscriptionResponseData({
    this.apellidos,
    this.autorizacion,
    this.banco,
    this.baseiva,
    this.ccNetworkResponse,
    this.ciudad,
    this.codError,
    this.codRespuesta,
    this.countryCard,
    this.descripcion,
    this.direccion,
    this.documento,
    this.email,
    this.enpruebas,
    this.estado,
    this.extras,
    this.factura,
    this.fecha,
    this.franquicia,
    this.ico,
    this.indPais,
    this.ip,
    this.iva,
    this.moneda,
    this.nombres,
    this.recibo,
    this.refPayco,
    this.respuesta,
    this.tipoDoc,
    this.valor,
    this.valorneto,
  });

  final String? apellidos;
  final String? autorizacion;
  final String? banco;
  final int? baseiva;
  final CcNetworkResponse? ccNetworkResponse;
  final String? ciudad;
  final String? codError;
  final int? codRespuesta;
  final String? countryCard;
  final String? descripcion;
  final String? direccion;
  final String? documento;
  final String? email;
  final int? enpruebas;
  final String? estado;
  final Extras? extras;
  final String? factura;
  final DateTime? fecha;
  final String? franquicia;
  final int? ico;
  final String? indPais;
  final String? ip;
  final int? iva;
  final String? moneda;
  final String? nombres;
  final String? recibo;
  final int? refPayco;
  final String? respuesta;
  final String? tipoDoc;
  final double? valor;
  final double? valorneto;

  factory PaySubscriptionResponseData.fromJson(Map<String, dynamic> json) =>
      PaySubscriptionResponseData(
        apellidos: json["apellidos"],
        autorizacion: json["autorizacion"],
        banco: json["banco"],
        baseiva: json["baseiva"],
        ccNetworkResponse: json["cc_network_response"] == null
            ? null
            : CcNetworkResponse.fromJson(json["cc_network_response"]),
        ciudad: json["ciudad"],
        codError: json["cod_error"],
        codRespuesta: json["cod_respuesta"],
        countryCard: json["country_card"],
        descripcion: json["descripcion"],
        direccion: json["direccion"],
        documento: json["documento"],
        email: json["email"],
        enpruebas: json["enpruebas"],
        estado: json["estado"],
        extras: json["extras"] == null ? null : Extras.fromJson(json["extras"]),
        factura: json["factura"],
        fecha: json["fecha"] == null ? null : DateTime.parse(json["fecha"]),
        franquicia: json["franquicia"],
        ico: json["ico"],
        indPais: json["ind_pais"],
        ip: json["ip"],
        iva: json["iva"],
        moneda: json["moneda"],
        nombres: json["nombres"],
        recibo: json["recibo"],
        refPayco: json["ref_payco"],
        respuesta: json["respuesta"],
        tipoDoc: json["tipo_doc"],
        valor: json["valor"]?.toDouble(),
        valorneto: json["valorneto"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "apellidos": apellidos,
        "autorizacion": autorizacion,
        "banco": banco,
        "baseiva": baseiva,
        "cc_network_response": ccNetworkResponse?.toJson(),
        "ciudad": ciudad,
        "cod_error": codError,
        "cod_respuesta": codRespuesta,
        "country_card": countryCard,
        "descripcion": descripcion,
        "direccion": direccion,
        "documento": documento,
        "email": email,
        "enpruebas": enpruebas,
        "estado": estado,
        "extras": extras?.toJson(),
        "factura": factura,
        "fecha": fecha?.toIso8601String(),
        "franquicia": franquicia,
        "ico": ico,
        "ind_pais": indPais,
        "ip": ip,
        "iva": iva,
        "moneda": moneda,
        "nombres": nombres,
        "recibo": recibo,
        "ref_payco": refPayco,
        "respuesta": respuesta,
        "tipo_doc": tipoDoc,
        "valor": valor,
        "valorneto": valorneto,
      };
}

class CcNetworkResponse {
  CcNetworkResponse({
    this.code,
    this.message,
  });

  final String? code;
  final String? message;

  factory CcNetworkResponse.fromJson(Map<String, dynamic> json) =>
      CcNetworkResponse(
        code: json["code"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
      };
}

class Extras {
  Extras({
    this.extra1,
    this.extra10,
    this.extra2,
    this.extra3,
    this.extra4,
    this.extra5,
    this.extra6,
    this.extra7,
    this.extra8,
    this.extra9,
  });

  final String? extra1;
  final String? extra10;
  final String? extra2;
  final String? extra3;
  final String? extra4;
  final String? extra5;
  final String? extra6;
  final String? extra7;
  final String? extra8;
  final String? extra9;

  factory Extras.fromJson(Map<String, dynamic> json) => Extras(
        extra1: json["extra1"],
        extra10: json["extra10"],
        extra2: json["extra2"],
        extra3: json["extra3"],
        extra4: json["extra4"],
        extra5: json["extra5"],
        extra6: json["extra6"],
        extra7: json["extra7"],
        extra8: json["extra8"],
        extra9: json["extra9"],
      );

  Map<String, dynamic> toJson() => {
        "extra1": extra1,
        "extra10": extra10,
        "extra2": extra2,
        "extra3": extra3,
        "extra4": extra4,
        "extra5": extra5,
        "extra6": extra6,
        "extra7": extra7,
        "extra8": extra8,
        "extra9": extra9,
      };
}

class Subscription {
  Subscription({
    this.data,
    this.first,
    this.idCustomer,
    this.idPlan,
    this.ip,
    this.methodConfirmation,
    this.nextVerificationDate,
    this.paymentAttempts,
    this.periodEnd,
    this.periodStart,
    this.status,
    this.tokenCard,
    this.urlConfirmation,
  });

  final SubscriptionData? data;
  final bool? first;
  final String? idCustomer;
  final String? idPlan;
  final String? ip;
  final String? methodConfirmation;
  final String? nextVerificationDate;
  final List<dynamic>? paymentAttempts;
  final String? periodEnd;
  final PeriodStart? periodStart;
  final String? status;
  final String? tokenCard;
  final String? urlConfirmation;

  factory Subscription.fromJson(Map<String, dynamic> json) => Subscription(
        data: json["data"] == null
            ? null
            : SubscriptionData.fromJson(json["data"]),
        first: json["first"],
        idCustomer: json["idCustomer"],
        idPlan: json["idPlan"],
        ip: json["ip"],
        methodConfirmation: json["method_confirmation"],
        nextVerificationDate: json["nextVerificationDate"],
        paymentAttempts: json["paymentAttempts"] == null
            ? []
            : List<dynamic>.from(json["paymentAttempts"]!.map((x) => x)),
        periodEnd: json["periodEnd"],
        periodStart: json["periodStart"] == null
            ? null
            : PeriodStart.fromJson(json["periodStart"]),
        status: json["status"],
        tokenCard: json["tokenCard"],
        urlConfirmation: json["url_confirmation"],
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
        "first": first,
        "idCustomer": idCustomer,
        "idPlan": idPlan,
        "ip": ip,
        "method_confirmation": methodConfirmation,
        "nextVerificationDate": nextVerificationDate,
        "paymentAttempts": paymentAttempts == null
            ? []
            : List<dynamic>.from(paymentAttempts!.map((x) => x)),
        "periodEnd": periodEnd,
        "periodStart": periodStart?.toJson(),
        "status": status,
        "tokenCard": tokenCard,
        "url_confirmation": urlConfirmation,
      };
}

class SubscriptionData {
  SubscriptionData({
    this.amount,
    this.currency,
    this.description,
    this.idClient,
    this.interval,
    this.intervalCount,
    this.name,
    this.trialDays,
  });

  final int? amount;
  final String? currency;
  final String? description;
  final String? idClient;
  final String? interval;
  final String? intervalCount;
  final String? name;
  final int? trialDays;

  factory SubscriptionData.fromJson(Map<String, dynamic> json) =>
      SubscriptionData(
        amount: json["amount"],
        currency: json["currency"],
        description: json["description"],
        idClient: json["idClient"],
        interval: json["interval"],
        intervalCount: json["interval_count"],
        name: json["name"],
        trialDays: json["trialDays"],
      );

  Map<String, dynamic> toJson() => {
        "amount": amount,
        "currency": currency,
        "description": description,
        "idClient": idClient,
        "interval": interval,
        "interval_count": intervalCount,
        "name": name,
        "trialDays": trialDays,
      };
}

class PeriodStart {
  PeriodStart({
    this.date,
  });

  final Date? date;

  factory PeriodStart.fromJson(Map<String, dynamic> json) => PeriodStart(
        date: json["\u0024date"] == null
            ? null
            : Date.fromJson(json["\u0024date"]),
      );

  Map<String, dynamic> toJson() => {
        "\u0024date": date?.toJson(),
      };
}

class Date {
  Date({
    this.numberLong,
  });

  final String? numberLong;

  factory Date.fromJson(Map<String, dynamic> json) => Date(
        numberLong: json["\u0024numberLong"],
      );

  Map<String, dynamic> toJson() => {
        "\u0024numberLong": numberLong,
      };
}
