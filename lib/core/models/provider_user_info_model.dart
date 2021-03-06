// To parse this JSON data, do
//
//     final ProviderUserInfo = userModelFromMap(jsonString);

import 'dart:convert';

import 'package:meta/meta.dart';

class ProviderUserInfo {
  ProviderUserInfo({
    @required this.providerId,
    @required this.displayName,
    @required this.photoUrl,
    @required this.federatedId,
    @required this.email,
    @required this.rawId,
    @required this.screenName,
  });

  final String providerId;
  final String displayName;
  final String photoUrl;
  final String federatedId;
  final String email;
  final String rawId;
  final String screenName;

  ProviderUserInfo copyWith({
    String providerId,
    String displayName,
    String photoUrl,
    String federatedId,
    String email,
    String rawId,
    String screenName,
  }) =>
      ProviderUserInfo(
        providerId: providerId ?? this.providerId,
        displayName: displayName ?? this.displayName,
        photoUrl: photoUrl ?? this.photoUrl,
        federatedId: federatedId ?? this.federatedId,
        email: email ?? this.email,
        rawId: rawId ?? this.rawId,
        screenName: screenName ?? this.screenName,
      );

  factory ProviderUserInfo.fromJson(String str) =>
      ProviderUserInfo.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProviderUserInfo.fromMap(Map<String, dynamic> json) =>
      ProviderUserInfo(
        providerId: json["providerId"],
        displayName: json["displayName"],
        photoUrl: json["photoUrl"],
        federatedId: json["federatedId"],
        email: json["email"],
        rawId: json["rawId"],
        screenName: json["screenName"],
      );

  Map<String, dynamic> toMap() => {
        "providerId": providerId,
        "displayName": displayName,
        "photoUrl": photoUrl,
        "federatedId": federatedId,
        "email": email,
        "rawId": rawId,
        "screenName": screenName,
      };
}
