import 'dart:convert';

UserEntity userEntityFromJson(String str) =>
    UserEntity.fromJson(json.decode(str));

String userEntityToJson(UserEntity data) => jsonEncode(data.toJson());

class UserEntity {
  final String name;
  final String lastName;
  final String email;
  final String phone;
  final String? uid;
  final String? password;
  final String? documentType;
  final String? documentNumber;
  final String? address;
  final String? companyName;
  final String? organizationUidFk;
  final int? roleIdFk;
  final DateTime? createdAt;

  UserEntity({
    required this.name,
    required this.lastName,
    required this.email,
    required this.phone,
    this.uid,
    this.password,
    this.documentType,
    this.documentNumber,
    this.address,
    this.companyName,
    this.organizationUidFk,
    this.roleIdFk,
    this.createdAt,
  });

  UserEntity copyWith({
    String? uid,
    String? name,
    String? lastName,
    String? email,
    String? password,
    String? documentType,
    String? documentNumber,
    String? phone,
    String? address,
    String? companyName,
    String? organizationUidFk,
    int? roleIdFk,
    DateTime? createdAt,
  }) =>
      UserEntity(
        uid: uid ?? this.uid,
        name: name ?? this.name,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        password: password ?? this.password,
        documentType: documentType ?? this.documentType,
        documentNumber: documentNumber ?? this.documentNumber,
        phone: phone ?? this.phone,
        address: address ?? this.address,
        organizationUidFk: organizationUidFk ?? this.organizationUidFk,
        companyName: companyName ?? this.companyName,
        roleIdFk: roleIdFk ?? this.roleIdFk,
        createdAt: createdAt ?? this.createdAt,
      );

  factory UserEntity.fromJson(Map<String, dynamic> json) => UserEntity(
        uid: json["uid"] ?? '',
        name: json["name"] ?? '',
        lastName: json["last_name"] ?? '',
        email: json["email"] ?? '',
        documentType: json["document_type"] ?? '',
        documentNumber: json["document_number"] ?? '',
        phone: json["phone"] ?? '',
        address: json["address"] ?? '',
        organizationUidFk: json["organization_uid_fk"] ?? '',
        companyName: json["company_name"] ?? '',
        roleIdFk: json["role_id_fk"] ?? 1,
        createdAt: json["created_at"] == null
            ? DateTime.now()
            : DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "last_name": lastName,
        "email": email,
        "document_type": documentType,
        "document_number": documentNumber,
        "phone": phone,
        "address": address,
        "organization_uid_fk": organizationUidFk,
        "company_name": companyName,
        "role_id_fk": 1
      };
  static Map<String, dynamic> toMap(UserEntity model) => {
        'uid': model.uid ?? '',
        'name': model.name,
        'last_name': model.lastName,
        'email': model.email,
        'document_type': model.documentType ?? '',
        'document_number': model.documentNumber ?? '',
        'company_name': model.companyName ?? '',
        'phone': model.phone,
        'address': model.address ?? '',
        'organization_uid_fk': model.organizationUidFk ?? '',
        'role_id_fk': model.roleIdFk ?? 1,
        'created_at': model.createdAt ?? DateTime.now(),
      };
}
