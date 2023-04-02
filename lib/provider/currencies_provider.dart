import 'package:flutter/material.dart';

import '../models/mocks/currency_model.dart';
import '../services/currency_service.dart';

class CurrenciesProvider extends ChangeNotifier {
  List<Currency> currencies = [];
  bool isLoading = false;

  CurrenciesProvider() {
    getCurrencies();
  }

  getCurrencies() {
    changeLoading();
    CurrencyService.getCurrencies().then((value) {
      currencies = value;
      changeLoading();
    });
  }

  changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }
}
