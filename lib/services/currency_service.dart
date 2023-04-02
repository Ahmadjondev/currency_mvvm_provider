import 'dart:io';

import 'package:dio/dio.dart';

import '../models/mocks/currency_model.dart';

class CurrencyService {
  static Future<List<Currency>> getCurrencies() async {
    const String baseUrl = "https://nbu.uz/en";
    await Future.delayed(Duration(seconds: 2));
    Response res = await Dio().get("$baseUrl/exchange-rates/json/");
    switch (res.statusCode) {
      case HttpStatus.ok:
        if (res.data is List) {
          return (res.data as List).map((e) => Currency.fromMap(e)).toList();
        }
        return [];
      default:
        return [];
    }
  }
}
