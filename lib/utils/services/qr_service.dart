import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pagalo_wallet/constants/api_path.dart';
import 'package:pagalo_wallet/core/models/qr_model.dart';

class QrService {
  static final client = http.Client();

  static final QrService _ = new QrService._internal();

  factory QrService() => _;

  QrService._internal();

  final ApiPath _apiPath = ApiPath();

  Future getTransfersByQr() async {
    final dynamic uri = _apiPath.firebaseDatabaseTransfersQrs;

    final http.Response response = await http.get(uri);

    return handleGetResponse(response);
  }

  Future getReceiversByQr() async {
    final dynamic uri = _apiPath.firebaseDatabaseReceiversQrs;

    final http.Response response = await http.get(uri);

    return handleGetResponse(response);
  }

  Future postTransferByQr({@required QrModel qr}) async {
    final String bodyJson = qr.toJson();
    final dynamic uri = _apiPath.firebaseDatabaseTransfersQrs;

    final http.Response response = await http.post(
      uri,
      body: bodyJson,
    );

    return handlePostResponse(response);
  }

  Future postReceiveByQr({@required QrModel qr}) async {
    final String bodyJson = qr.toJson();
    final dynamic uri = _apiPath.firebaseDatabaseReceiversQrs;

    final http.Response response = await http.post(
      uri,
      body: bodyJson,
    );

    return handlePostResponse(response);
  }

  dynamic handleGetResponse(http.Response response) async {
    final dynamic decodeResponse = await json.decode(response.body);

    if (decodeResponse == null)
      return {
        'ok': true,
        'data': <Map<String, dynamic>>[],
      };

    if (decodeResponse is Map) {
      List<Map<String, dynamic>> result = [];

      decodeResponse.forEach(
        (key, value) => result.add(<String, dynamic>{
          'name': key,
          ...value,
        }),
      );

      return {
        'ok': true,
        'data': result,
      };
    }

    return handleResponseError(decodeResponse);
  }

  dynamic handlePostResponse(http.Response response) async {
    final dynamic decodeResponse = await json.decode(response.body);

    if (decodeResponse.containsKey('name')) {
      final String name = decodeResponse['name'];

      if (name.isNotEmpty) {
        return {
          'ok': true,
          'data': name,
        };
      }
    }

    return handleResponseError(decodeResponse);
  }

  dynamic handleResponseError(Map decodeResponse) {
    if (decodeResponse == null)
      return {
        'ok': false,
        'error': 'Unknown error.',
      };

    if (decodeResponse.containsKey('error'))
      return {
        'ok': false,
        'error': decodeResponse['error']['message'],
      };

    return null;
  }
}
