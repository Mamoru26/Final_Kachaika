// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import '../../../core/export.dart';

class CalculateField extends StatelessWidget {
  final String headertext;
  final String fieldtext;
  const CalculateField({
    super.key,
    required this.headertext,
    required this.fieldtext,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DynamicTextWidget(
          text: headertext,
          textalign: TextAlign.left,
        ),
        Container(
          width: double.infinity,
          height: 55,
          decoration: BoxDecoration(
              color: const Color(0xFFD39FF2).withOpacity(0.2),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              fieldtext,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        )
      ],
    );
  }
}
