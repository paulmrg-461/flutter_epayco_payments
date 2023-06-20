import 'dart:convert';

PsePaymentResponse psePaymentResponseFromJson(String str) =>
    PsePaymentResponse.fromJson(json.decode(str));

String psePaymentResponseToJson(PsePaymentResponse data) =>
    json.encode(data.toJson());

class PsePaymentResponse {
  PsePaymentResponse({
    required this.data,
    required this.lastAction,
    required this.success,
    required this.textResponse,
    required this.titleResponse,
  });

  final Data data;
  final String lastAction;
  final bool success;
  final String textResponse;
  final String titleResponse;

  factory PsePaymentResponse.fromJson(Map<String, dynamic> json) =>
      PsePaymentResponse(
        data: Data.fromJson(json["data"]),
        lastAction: json["last_action"],
        success: json["success"],
        textResponse: json["text_response"],
        titleResponse: json["title_response"],
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "last_action": lastAction,
        "success": success,
        "text_response": textResponse,
        "title_response": titleResponse,
      };
}

class Data {
  Data({
    required this.autorizacion,
    required this.baseiva,
    required this.ciclo,
    required this.ciudad,
    this.codError,
    required this.codRespuesta,
    required this.descripcion,
    required this.estado,
    required this.extras,
    required this.factura,
    required this.fecha,
    required this.ico,
    required this.iva,
    required this.moneda,
    required this.recibo,
    required this.refPayco,
    required this.respuesta,
    required this.ticketId,
    required this.transactionId,
    required this.urlbanco,
    required this.valor,
  });

  final String autorizacion;
  final int baseiva;
  final String ciclo;
  final String ciudad;
  final dynamic codError;
  final int codRespuesta;
  final String descripcion;
  final String estado;
  final Extras extras;
  final String factura;
  final String fecha;
  final int ico;
  final int iva;
  final String moneda;
  final String recibo;
  final int refPayco;
  final String respuesta;
  final String ticketId;
  final String transactionId;
  final String urlbanco;
  final int valor;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        autorizacion: json["autorizacion"],
        baseiva: json["baseiva"],
        ciclo: json["ciclo"],
        ciudad: json["ciudad"],
        codError: json["cod_error"],
        codRespuesta: json["cod_respuesta"],
        descripcion: json["descripcion"],
        estado: json["estado"],
        extras: Extras.fromJson(json["extras"]),
        factura: json["factura"],
        fecha: json["fecha"],
        ico: json["ico"],
        iva: json["iva"],
        moneda: json["moneda"],
        recibo: json["recibo"],
        refPayco: json["ref_payco"],
        respuesta: json["respuesta"],
        ticketId: json["ticketId"],
        transactionId: json["transactionID"],
        urlbanco: json["urlbanco"],
        valor: json["valor"],
      );

  Map<String, dynamic> toJson() => {
        "autorizacion": autorizacion,
        "baseiva": baseiva,
        "ciclo": ciclo,
        "ciudad": ciudad,
        "cod_error": codError,
        "cod_respuesta": codRespuesta,
        "descripcion": descripcion,
        "estado": estado,
        "extras": extras.toJson(),
        "factura": factura,
        "fecha": fecha,
        "ico": ico,
        "iva": iva,
        "moneda": moneda,
        "recibo": recibo,
        "ref_payco": refPayco,
        "respuesta": respuesta,
        "ticketId": ticketId,
        "transactionID": transactionId,
        "urlbanco": urlbanco,
        "valor": valor,
      };
}

class Extras {
  Extras({
    required this.extra1,
    required this.extra10,
    required this.extra2,
    required this.extra3,
    required this.extra4,
    required this.extra5,
    required this.extra6,
    required this.extra7,
    required this.extra8,
    required this.extra9,
  });

  final String extra1;
  final String extra10;
  final String extra2;
  final String extra3;
  final String extra4;
  final String extra5;
  final String extra6;
  final String extra7;
  final String extra8;
  final String extra9;

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
