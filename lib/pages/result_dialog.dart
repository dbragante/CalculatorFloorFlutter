import 'package:flutter/material.dart';

import 'package:calculator_floor_manha/models/result_model.dart';

import '../core/constants.dart';

class ResultDialog extends StatelessWidget {
  final ResultModel result;

  const ResultDialog({
    Key key,
    this.result,
  }) : super(key: key);

  static void show(BuildContext context, ResultModel result) {
    showDialog(
      context: context,
      builder: (context) => ResultDialog(result: result),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(kResult),
      content: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildTile(result.amountPieces, kAmountFloor),
            _buildTile(result.amountFooter, kAmountFloorToFooter),
            _buildTile(result.amountPiecesAndFooter, kTotalFloor),
            Divider(),
            _buildTile(result.areaWithoutFooter, kAreaWithoutFooter),
            _buildTile(result.areaWithFooter, kAreaWithFooter),
            _priceTile(result.priceWithoutFooter, kpriceWithoutFooter),
            _priceTile(result.priceWithFooter, kPriceWithFooter),
          ],
        ),
      ),
    );
  }

  Widget _buildTile(num value, String description) {
    return ListTile(
      title: Text(value.toStringAsFixed(kDecimalPrecision)),
      subtitle: Text(description),
    );
  }

  Widget _priceTile(num value, String description) {
    return ListTile(
      title: Text(value.toStringAsFixed(kDecimalPrecision) + " Reais"),
      subtitle: Text(description),
    );
  }
}
