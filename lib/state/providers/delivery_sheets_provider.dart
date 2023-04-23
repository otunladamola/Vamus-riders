import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class DeliverySheetProvider {
  static AutoDisposeChangeNotifierProvider<DeliverySheetsNotifier> get state =>
      _sheetProvider;
}

final AutoDisposeChangeNotifierProvider<DeliverySheetsNotifier> _sheetProvider =
    ChangeNotifierProvider.autoDispose<DeliverySheetsNotifier>(
  (ref) => DeliverySheetsNotifier(ref),
);

class DeliverySheetsNotifier extends ChangeNotifier {
  final AutoDisposeChangeNotifierProviderRef ref;
  DeliverySheetsNotifier(this.ref);

  DeliverySheets sheets = DeliverySheets.request;
  DeliverySheets get currentSheet => sheets;

  set currentSheet(DeliverySheets deliverySheets) {
    sheets = deliverySheets;
    notifyListeners();
  }

  void acceptRequest() {
    currentSheet = DeliverySheets.details;
  }

  void declineRequest() {
    // currentSheet = DeliverySheets.details;
  }

  void confirmAcceptance() {
    currentSheet = DeliverySheets.confirmed;
  }
}

enum DeliverySheets {
  request,
  details,
  confirmed,
}
