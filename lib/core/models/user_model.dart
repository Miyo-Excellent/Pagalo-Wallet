// To parse this JSON data, do
//
//     final userModel = userModelFromMap(jsonString);

import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:pagalo_wallet/core/models/provider_user_info_model.dart';

class UserModel {
  UserModel({
    @required this.localId,
    @required this.email,
    @required this.emailVerified,
    @required this.displayName,
    @required this.providerUserInfo,
    @required this.photoUrl,
    @required this.passwordHash,
    @required this.passwordUpdatedAt,
    @required this.validSince,
    @required this.disabled,
    @required this.lastLoginAt,
    @required this.createdAt,
    @required this.customAuth,
  });

  final String localId;
  final String email;
  final bool emailVerified;
  final String displayName;
  final List<ProviderUserInfo> providerUserInfo;
  final String photoUrl;
  final String passwordHash;
  final int passwordUpdatedAt;
  final String validSince;
  final bool disabled;
  final String lastLoginAt;
  final String createdAt;
  final bool customAuth;

  UserModel copyWith({
    String localId,
    String email,
    bool emailVerified,
    String displayName,
    List<ProviderUserInfo> providerUserInfo,
    String photoUrl,
    String passwordHash,
    int passwordUpdatedAt,
    String validSince,
    bool disabled,
    String lastLoginAt,
    String createdAt,
    bool customAuth,
  }) =>
      UserModel(
        localId: localId ?? this.localId,
        email: email ?? this.email,
        emailVerified: emailVerified ?? this.emailVerified,
        displayName: displayName ?? this.displayName,
        providerUserInfo: providerUserInfo ?? this.providerUserInfo,
        photoUrl: photoUrl ?? this.photoUrl,
        passwordHash: passwordHash ?? this.passwordHash,
        passwordUpdatedAt: passwordUpdatedAt ?? this.passwordUpdatedAt,
        validSince: validSince ?? this.validSince,
        disabled: disabled ?? this.disabled,
        lastLoginAt: lastLoginAt ?? this.lastLoginAt,
        createdAt: createdAt ?? this.createdAt,
        customAuth: customAuth ?? this.customAuth,
      );

  factory UserModel.fromJson(String str) => UserModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
        localId: json["localId"],
        email: json["email"],
        emailVerified: json["emailVerified"],
        displayName: json["displayName"],
        providerUserInfo: List<ProviderUserInfo>.from(
            json["providerUserInfo"].map((x) => ProviderUserInfo.fromMap(x))),
        photoUrl: json["photoUrl"],
        passwordHash: json["passwordHash"],
        passwordUpdatedAt: json["passwordUpdatedAt"],
        validSince: json["validSince"],
        disabled: json["disabled"],
        lastLoginAt: json["lastLoginAt"],
        createdAt: json["createdAt"],
        customAuth: json["customAuth"],
      );

  Map<String, dynamic> toMap() => {
        "localId": localId,
        "email": email,
        "emailVerified": emailVerified,
        "displayName": displayName,
        "providerUserInfo":
            List<dynamic>.from(providerUserInfo.map((x) => x.toMap())),
        "photoUrl": photoUrl,
        "passwordHash": passwordHash,
        "passwordUpdatedAt": passwordUpdatedAt,
        "validSince": validSince,
        "disabled": disabled,
        "lastLoginAt": lastLoginAt,
        "createdAt": createdAt,
        "customAuth": customAuth,
      };
}
