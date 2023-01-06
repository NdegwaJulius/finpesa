import 'package:finpesa/models/card_details.dart';
import 'package:finpesa/widgets/card_details_widget.dart';
import 'package:finpesa/widgets/category_box.dart';
import 'package:flutter/material.dart';

class CardsSection extends StatelessWidget {
  final List<CardDetails> cardDetails;

  const CardsSection({Key? key, required this.cardDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CategoryBox(
      title: "Your Cards",
      suffix: Container(),
      children: cardDetails
          .map(
            (CardDetails details) => CardDetailsWidget(cardDetails: details),
          )
          .toList(),
    );
  }
}
