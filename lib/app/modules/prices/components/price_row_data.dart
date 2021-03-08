import 'package:flutter/material.dart';

class PriceRowData extends StatelessWidget {
  final String title;
  final double value;

  const PriceRowData({Key key, this.title, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(title, style: Theme.of(context).textTheme.headline6),
        Text(value.toString(), style: Theme.of(context).textTheme.headline6),
      ],
    );
  }
}
