import 'dart:convert';

CreditCardPaymentResponse creditCardPaymentResponseFromJson(String str) =>
    CreditCardPaymentResponse.fromJson(json.decode(str));

String creditCardPaymentResponseToJson(CreditCardPaymentResponse data) =>
    json.encode(data.toJson());

class CreditCardPaymentResponse {
  CreditCardPaymentResponse({
    this.data,
    this.object,
    this.status,
    this.success,
    this.type,
  });

  final Data? data;
  final String? object;
  final bool? status;
  final bool? success;
  final String? type;

  CreditCardPaymentResponse copyWith({
    Data? data,
    String? object,
    bool? status,
    bool? success,
    String? type,
  }) =>
      CreditCardPaymentResponse(
        data: data ?? this.data,
        object: object ?? this.object,
        status: status ?? this.status,
        success: success ?? this.success,
        type: type ?? this.type,
      );

  factory CreditCardPaymentResponse.fromJson(Map<String, dynamic> json) =>
      CreditCardPaymentResponse(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        object: json["object"],
        status: json["status"],
        success: json["success"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
        "object": object,
        "status": status,
        "success": success,
        "type": type,
      };
}

class Data {
  Data({
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
  final int? valor;
  final int? valorneto;

  Data copyWith({
    String? apellidos,
    String? autorizacion,
    String? banco,
    int? baseiva,
    CcNetworkResponse? ccNetworkResponse,
    String? ciudad,
    String? codError,
    int? codRespuesta,
    String? countryCard,
    String? descripcion,
    String? direccion,
    String? documento,
    String? email,
    int? enpruebas,
    String? estado,
    Extras? extras,
    String? factura,
    DateTime? fecha,
    String? franquicia,
    int? ico,
    String? indPais,
    String? ip,
    int? iva,
    String? moneda,
    String? nombres,
    String? recibo,
    int? refPayco,
    String? respuesta,
    String? tipoDoc,
    int? valor,
    int? valorneto,
  }) =>
      Data(
        apellidos: apellidos ?? this.apellidos,
        autorizacion: autorizacion ?? this.autorizacion,
        banco: banco ?? this.banco,
        baseiva: baseiva ?? this.baseiva,
        ccNetworkResponse: ccNetworkResponse ?? this.ccNetworkResponse,
        ciudad: ciudad ?? this.ciudad,
        codError: codError ?? this.codError,
        codRespuesta: codRespuesta ?? this.codRespuesta,
        countryCard: countryCard ?? this.countryCard,
        descripcion: descripcion ?? this.descripcion,
        direccion: direccion ?? this.direccion,
        documento: documento ?? this.documento,
        email: email ?? this.email,
        enpruebas: enpruebas ?? this.enpruebas,
        estado: estado ?? this.estado,
        extras: extras ?? this.extras,
        factura: factura ?? this.factura,
        fecha: fecha ?? this.fecha,
        franquicia: franquicia ?? this.franquicia,
        ico: ico ?? this.ico,
        indPais: indPais ?? this.indPais,
        ip: ip ?? this.ip,
        iva: iva ?? this.iva,
        moneda: moneda ?? this.moneda,
        nombres: nombres ?? this.nombres,
        recibo: recibo ?? this.recibo,
        refPayco: refPayco ?? this.refPayco,
        respuesta: respuesta ?? this.respuesta,
        tipoDoc: tipoDoc ?? this.tipoDoc,
        valor: valor ?? this.valor,
        valorneto: valorneto ?? this.valorneto,
      );

  factory Data.fromJson(Map<String, dynamic> json) => Data(
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
        valor: json["valor"],
        valorneto: json["valorneto"],
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

  CcNetworkResponse copyWith({
    String? code,
    String? message,
  }) =>
      CcNetworkResponse(
        code: code ?? this.code,
        message: message ?? this.message,
      );

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

  Extras copyWith({
    String? extra1,
    String? extra10,
    String? extra2,
    String? extra3,
    String? extra4,
    String? extra5,
    String? extra6,
    String? extra7,
    String? extra8,
    String? extra9,
  }) =>
      Extras(
        extra1: extra1 ?? this.extra1,
        extra10: extra10 ?? this.extra10,
        extra2: extra2 ?? this.extra2,
        extra3: extra3 ?? this.extra3,
        extra4: extra4 ?? this.extra4,
        extra5: extra5 ?? this.extra5,
        extra6: extra6 ?? this.extra6,
        extra7: extra7 ?? this.extra7,
        extra8: extra8 ?? this.extra8,
        extra9: extra9 ?? this.extra9,
      );

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
