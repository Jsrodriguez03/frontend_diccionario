import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/card_category.dart';

class ListCard extends StatelessWidget {
  const ListCard({
    super.key,
    required this.titleElement,
  });

  final String titleElement;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: List<Widget>.generate(8, (index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CardCategory(titleCard: titleElement),
                CardCategory(titleCard: titleElement),
              ],
            ),
          );
        }),
      ),
    );
  }
}