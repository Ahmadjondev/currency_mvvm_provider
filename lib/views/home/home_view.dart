import 'package:currency/core/extensions/word_extension.dart';
import 'package:currency/views/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/currencies_provider.dart';

class HomeState extends HomeViewModel {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => CurrenciesProvider(),
      child: Scaffold(
        appBar: AppBar(title: const Text("Currency App")),
        body: context.watch<CurrenciesProvider>().isLoading
            ? const Center(
                child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.black),
              ))
            : ListView.builder(
                itemCount:
                    context.watch<CurrenciesProvider>().currencies.length,
                itemBuilder: (_, index) {
                  return ListTile(
                    title: Text(context
                        .watch<CurrenciesProvider>()
                        .currencies[index]
                        .title
                        .naqd),
                    trailing: Text(context
                        .watch<CurrenciesProvider>()
                        .currencies[index]
                        .cbPrice
                        .uzs),
                    leading: CircleAvatar(
                      child: Text(context
                          .watch<CurrenciesProvider>()
                          .currencies[index]
                          .code),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
