// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import '../../../../core/export.dart';

class TerminalFieldWithText extends StatelessWidget {
  final String headertext;
  final String fieldtext;
  const TerminalFieldWithText({
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
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            width: double.infinity,
            height: 58,
            decoration: BoxDecoration(
                color: const Color(0xFFD39FF2).withOpacity(0.2),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Text(
                fieldtext,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
        )
      ],
    );
  }
}
