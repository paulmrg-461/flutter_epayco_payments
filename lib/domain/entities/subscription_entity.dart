import 'dart:convert';

SubscriptionEntity subscriptionEntityFromJson(String str) =>
    SubscriptionEntity.fromJson(json.decode(str));

String subscriptionEntityToJson(SubscriptionEntity data) =>
    json.encode(data.toJson());

class SubscriptionEntity {
  final String id;
  final String epaycoId;
  final String epaycoUserId;
  final String epaycoTokenCard;
  final String planIdFk;
  final String pseId;
  final String suscriptionIdFk;
  final String organizationUidFk;
  final String userOwnerUidFk;
  final DateTime startDate;
  final DateTime endDate;

  SubscriptionEntity({
    required this.id,
    required this.epaycoId,
    required this.epaycoUserId,
    required this.epaycoTokenCard,
    required this.planIdFk,
    required this.pseId,
    required this.suscriptionIdFk,
    required this.organizationUidFk,
    required this.userOwnerUidFk,
    required this.startDate,
    required this.endDate,
  });

  SubscriptionEntity copyWith({
    String? id,
    String? epaycoId,
    String? epaycoUserId,
    String? epaycoTokenCard,
    String? planIdFk,
    String? pseId,
    String? suscriptionIdFk,
    String? organizationUidFk,
    String? userOwnerUidFk,
    DateTime? startDate,
    DateTime? endDate,
  }) =>
      SubscriptionEntity(
        id: id ?? this.id,
        epaycoId: epaycoId ?? this.epaycoId,
        epaycoUserId: epaycoUserId ?? this.epaycoUserId,
        epaycoTokenCard: epaycoTokenCard ?? this.epaycoTokenCard,
        planIdFk: planIdFk ?? this.planIdFk,
        pseId: pseId ?? this.pseId,
        suscriptionIdFk: suscriptionIdFk ?? this.suscriptionIdFk,
        organizationUidFk: organizationUidFk ?? this.organizationUidFk,
        userOwnerUidFk: userOwnerUidFk ?? this.userOwnerUidFk,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
      );

  factory SubscriptionEntity.fromJson(Map<String, dynamic> json) =>
      SubscriptionEntity(
        id: json["id"],
        epaycoId: json["epayco_id"],
        epaycoUserId: json["epayco_user_id"],
        epaycoTokenCard: json["epayco_token_card"],
        planIdFk: json["plan_id_fk"],
        pseId: json["pse_id"],
        suscriptionIdFk: json["suscription_id_fk"],
        organizationUidFk: json["organization_uid_fk"],
        userOwnerUidFk: json["user_owner_uid_fk"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "epayco_id": epaycoId,
        "epayco_user_id": epaycoUserId,
        "epayco_token_card": epaycoTokenCard,
        "plan_id_fk": planIdFk,
        "pse_id": pseId,
        "suscription_id_fk": suscriptionIdFk,
        "organization_uid_fk": organizationUidFk,
        "user_owner_uid_fk": userOwnerUidFk,
        "start_date":
            "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
        "end_date":
            "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
      };
}
