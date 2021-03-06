// To parse this JSON data, do
//
//     final qrModel = qrModelFromMap(jsonString);

import 'dart:convert';

import 'package:meta/meta.dart';

class QrModel {
  QrModel({
    @required this.uuid,
    @required this.id,
    @required this.fingerprint,
    @required this.createdAt,
    @required this.transferenceValue,
    this.name,
  });

  final String uuid;
  final String id;
  final String fingerprint;
  final String createdAt;
  final int transferenceValue;
  String name = '';

  QrModel copyWith({
    String uuid,
    String id,
    String fingerprint,
    String createdAt,
    int transferenceValue,
    int name,
  }) =>
      QrModel(
        uuid: uuid ?? this.uuid,
        id: id ?? this.id,
        fingerprint: fingerprint ?? this.fingerprint,
        createdAt: createdAt ?? this.createdAt,
        transferenceValue: transferenceValue ?? this.transferenceValue,
        name: name ?? this.name ?? '',
      );

  factory QrModel.fromJson(String str) => QrModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory QrModel.fromMap(Map<String, dynamic> json) => QrModel(
        name: json["name"] ?? '',
        uuid: json["uuid"],
        id: json["id"],
        fingerprint: json["fingerprint"],
        createdAt: json["createdAt"],
        transferenceValue: json["transferenceValue"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "uuid": uuid,
        "id": id,
        "fingerprint": fingerprint,
        "createdAt": createdAt,
        "transferenceValue": transferenceValue,
      };
}
