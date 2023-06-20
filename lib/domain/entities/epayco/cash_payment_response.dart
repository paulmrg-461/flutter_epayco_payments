import 'dart:convert';

class CashPaymentResponse {
  final Data? data;
  final String? lastAction;
  final bool? success;
  final String? textResponse;
  final String? titleResponse;

  CashPaymentResponse({
    this.data,
    this.lastAction,
    this.success,
    this.textResponse,
    this.titleResponse,
  });

  factory CashPaymentResponse.fromRawJson(String str) =>
      CashPaymentResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CashPaymentResponse.fromJson(Map<String, dynamic> json) =>
      CashPaymentResponse(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        lastAction: json["last_action"],
        success: json["success"],
        textResponse: json["text_response"],
        titleResponse: json["title_response"],
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
        "last_action": lastAction,
        "success": success,
        "text_response": textResponse,
        "title_response": titleResponse,
      };
}

class Data {
  final String? apellidos;
  final String? autorizacion;
  final String? banco;
  final int? baseiva;
  final bool? ccNetworkResponse;
  final String? ciudad;
  final String? codError;
  final int? codRespuesta;
  final int? codigoproyecto;
  final String? countryCard;
  final String? descripcion;
  final String? direccion;
  final String? documento;
  final String? email;
  final int? enpruebas;
  final String? estado;
  final Extras? extras;
  final double? factorConversion;
  final String? factura;
  final DateTime? fecha;
  final DateTime? fechaexpiracion;
  final DateTime? fechapago;
  final String? franquicia;
  final int? ico;
  final dynamic indPais;
  final String? ip;
  final int? iva;
  final String? moneda;
  final String? nombres;
  final String? pin;
  final String? recibo;
  final int? refPayco;
  final String? respuesta;
  final String? tipoDoc;
  final int? valor;
  final int? valorPesos;
  final int? valorneto;

  Data({
    this.apellidos,
    this.autorizacion,
    this.banco,
    this.baseiva,
    this.ccNetworkResponse,
    this.ciudad,
    this.codError,
    this.codRespuesta,
    this.codigoproyecto,
    this.countryCard,
    this.descripcion,
    this.direccion,
    this.documento,
    this.email,
    this.enpruebas,
    this.estado,
    this.extras,
    this.factorConversion,
    this.factura,
    this.fecha,
    this.fechaexpiracion,
    this.fechapago,
    this.franquicia,
    this.ico,
    this.indPais,
    this.ip,
    this.iva,
    this.moneda,
    this.nombres,
    this.pin,
    this.recibo,
    this.refPayco,
    this.respuesta,
    this.tipoDoc,
    this.valor,
    this.valorPesos,
    this.valorneto,
  });

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        apellidos: json["apellidos"],
        autorizacion: json["autorizacion"],
        banco: json["banco"],
        baseiva: json["baseiva"],
        ccNetworkResponse: json["cc_network_response"],
        ciudad: json["ciudad"],
        codError: json["cod_error"],
        codRespuesta: json["cod_respuesta"],
        codigoproyecto: json["codigoproyecto"],
        countryCard: json["country_card"],
        descripcion: json["descripcion"],
        direccion: json["direccion"],
        documento: json["documento"],
        email: json["email"],
        enpruebas: json["enpruebas"],
        estado: json["estado"],
        extras: json["extras"] == null ? null : Extras.fromJson(json["extras"]),
        factorConversion: json["factor_conversion"]?.toDouble(),
        factura: json["factura"],
        fecha: json["fecha"] == null ? null : DateTime.parse(json["fecha"]),
        fechaexpiracion: json["fechaexpiracion"] == null
            ? null
            : DateTime.parse(json["fechaexpiracion"]),
        fechapago: json["fechapago"] == null
            ? null
            : DateTime.parse(json["fechapago"]),
        franquicia: json["franquicia"],
        ico: json["ico"],
        indPais: json["ind_pais"],
        ip: json["ip"],
        iva: json["iva"],
        moneda: json["moneda"],
        nombres: json["nombres"],
        pin: json["pin"],
        recibo: json["recibo"],
        refPayco: json["ref_payco"],
        respuesta: json["respuesta"],
        tipoDoc: json["tipo_doc"],
        valor: json["valor"],
        valorPesos: json["valor_pesos"],
        valorneto: json["valorneto"],
      );

  Map<String, dynamic> toJson() => {
        "apellidos": apellidos,
        "autorizacion": autorizacion,
        "banco": banco,
        "baseiva": baseiva,
        "cc_network_response": ccNetworkResponse,
        "ciudad": ciudad,
        "cod_error": codError,
        "cod_respuesta": codRespuesta,
        "codigoproyecto": codigoproyecto,
        "country_card": countryCard,
        "descripcion": descripcion,
        "direccion": direccion,
        "documento": documento,
        "email": email,
        "enpruebas": enpruebas,
        "estado": estado,
        "extras": extras?.toJson(),
        "factor_conversion": factorConversion,
        "factura": factura,
        "fecha": fecha?.toIso8601String(),
        "fechaexpiracion": fechaexpiracion?.toIso8601String(),
        "fechapago": fechapago?.toIso8601String(),
        "franquicia": franquicia,
        "ico": ico,
        "ind_pais": indPais,
        "ip": ip,
        "iva": iva,
        "moneda": moneda,
        "nombres": nombres,
        "pin": pin,
        "recibo": recibo,
        "ref_payco": refPayco,
        "respuesta": respuesta,
        "tipo_doc": tipoDoc,
        "valor": valor,
        "valor_pesos": valorPesos,
        "valorneto": valorneto,
      };
}

class Extras {
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

  factory Extras.fromRawJson(String str) => Extras.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

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
