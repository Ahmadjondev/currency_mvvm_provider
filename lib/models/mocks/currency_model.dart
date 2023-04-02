class Currency {
  String title;
  String code;
  String cbPrice;
  String nbuBuyPrice;
  String nbuCellPrice;
  String date;

  Currency({
    required this.title,
    required this.code,
    required this.cbPrice,
    required this.nbuBuyPrice,
    required this.nbuCellPrice,
    required this.date,
  });

  @override
  String toString() {
    return 'Currency{' +
        ' title: $title,' +
        ' code: $code,' +
        ' cbPrice: $cbPrice,' +
        ' nbuBuyPrice: $nbuBuyPrice,' +
        ' nbuCellPrice: $nbuCellPrice,' +
        ' date: $date,' +
        '}';
  }

  Currency copyWith({
    String? title,
    String? code,
    String? cbPrice,
    String? nbuBuyPrice,
    String? nbuCellPrice,
    String? date,
  }) {
    return Currency(
      title: title ?? this.title,
      code: code ?? this.code,
      cbPrice: cbPrice ?? this.cbPrice,
      nbuBuyPrice: nbuBuyPrice ?? this.nbuBuyPrice,
      nbuCellPrice: nbuCellPrice ?? this.nbuCellPrice,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'code': code,
      'cbPrice': cbPrice,
      'nbuBuyPrice': nbuBuyPrice,
      'nbuCellPrice': nbuCellPrice,
      'date': date,
    };
  }

  factory Currency.fromMap(Map<String, dynamic> map) {
    return Currency(
      title: map['title'] as String,
      code: map['code'] as String,
      cbPrice: map['cb_price'] as String,
      nbuBuyPrice: map['nbu_buy_price'] as String,
      nbuCellPrice: map['nbu_cell_price'] as String,
      date: map['date'] as String,
    );
  }

//</editor-fold>
}
