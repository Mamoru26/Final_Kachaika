// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TerminalField extends StatelessWidget {
  final String fieldtext;
  const TerminalField({
    super.key,
    required this.fieldtext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 102,
      decoration: BoxDecoration(
          color: const Color(0xFFD39FF2).withOpacity(0.2),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Text(
          fieldtext,
          style:
              Theme.of(context).textTheme.titleMedium?.copyWith(height: 1.15),
        ),
      ),
    );
  }
}
