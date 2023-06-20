import 'dart:convert';

OrganizationEntity organizationEntityFromJson(String str) =>
    OrganizationEntity.fromJson(json.decode(str));

String organizationEntityToJson(OrganizationEntity data) =>
    json.encode(data.toJson());

class OrganizationEntity {
  final String? uid;
  final String? name;
  final String? driveFolderId;
  final DateTime? createdAt;

  OrganizationEntity({
    this.uid,
    this.name,
    this.driveFolderId,
    this.createdAt,
  });

  OrganizationEntity copyWith({
    String? uid,
    String? name,
    String? driveFolderId,
    DateTime? createdAt,
  }) =>
      OrganizationEntity(
        uid: uid ?? this.uid,
        name: name ?? this.name,
        driveFolderId: driveFolderId ?? this.driveFolderId,
        createdAt: createdAt ?? this.createdAt,
      );

  factory OrganizationEntity.fromJson(Map<String, dynamic> json) =>
      OrganizationEntity(
        uid: json["uid"],
        name: json["name"],
        driveFolderId: json["drive_folder_id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toJson() => {
        "uid": uid,
        "name": name,
        "drive_folder_id": driveFolderId,
        "created_at":
            "${createdAt!.year.toString().padLeft(4, '0')}-${createdAt!.month.toString().padLeft(2, '0')}-${createdAt!.day.toString().padLeft(2, '0')}",
      };
}
