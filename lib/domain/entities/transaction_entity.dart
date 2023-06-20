import 'dart:convert';

TransactionEntity transactionEntityFromJson(String str) =>
    TransactionEntity.fromJson(json.decode(str));

String transactionEntityToJson(TransactionEntity data) =>
    json.encode(data.toJson());

class TransactionEntity {
  final String? id;
  final String? status;
  final String? transactionChannel;
  final String? amount;
  final String? userUidFk;
  final String? suscriptionIdFk;
  final String? transactionId;
  final String? invoiceId;
  final Details? details;
  final DateTime? date;

  TransactionEntity({
    this.id,
    this.status,
    this.transactionChannel,
    this.amount,
    this.userUidFk,
    this.suscriptionIdFk,
    this.transactionId,
    this.invoiceId,
    this.details,
    this.date,
  });

  TransactionEntity copyWith({
    String? id,
    String? status,
    String? transactionChannel,
    String? amount,
    String? userUidFk,
    String? suscriptionIdFk,
    String? transactionId,
    String? invoiceId,
    Details? details,
    DateTime? date,
  }) =>
      TransactionEntity(
        id: id ?? this.id,
        status: status ?? this.status,
        transactionChannel: transactionChannel ?? this.transactionChannel,
        amount: amount ?? this.amount,
        userUidFk: userUidFk ?? this.userUidFk,
        suscriptionIdFk: suscriptionIdFk ?? this.suscriptionIdFk,
        transactionId: transactionId ?? this.transactionId,
        invoiceId: invoiceId ?? this.invoiceId,
        details: details ?? this.details,
        date: date ?? this.date,
      );

  factory TransactionEntity.fromJson(Map<String, dynamic> json) =>
      TransactionEntity(
        id: json["id"],
        status: json["status"],
        transactionChannel: json["transaction_channel"],
        amount: json["amount"],
        userUidFk: json["user_uid_fk"],
        suscriptionIdFk: json["suscription_id_fk"],
        transactionId: json["transaction_id"],
        invoiceId: json["invoice_id"],
        details:
            json["details"] == null ? null : Details.fromJson(json["details"]),
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "status": status,
        "transaction_channel": transactionChannel,
        "amount": amount,
        "user_uid_fk": userUidFk,
        "suscription_id_fk": suscriptionIdFk,
        "transaction_id": transactionId,
        "invoice_id": invoiceId,
        "details": details?.toJson(),
        "date":
            "${date!.year.toString().padLeft(4, '0')}-${date!.month.toString().padLeft(2, '0')}-${date!.day.toString().padLeft(2, '0')}",
      };
}

class Details {
  final String? details;

  Details({
    this.details,
  });

  Details copyWith({
    String? details,
  }) =>
      Details(
        details: details ?? this.details,
      );

  factory Details.fromJson(Map<String, dynamic> json) => Details(
        details: json["details"],
      );

  Map<String, dynamic> toJson() => {
        "details": details,
      };
}
