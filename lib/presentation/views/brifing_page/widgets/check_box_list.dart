import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:kachaika/presentation/viewmodels/calculate_view_model.dart';

class RadioGroup extends StatefulWidget {
  const RadioGroup({super.key});

  @override
  RadioGroupState createState() => RadioGroupState();
}

class RadioGroupState extends State<RadioGroup> {
  int? _selectedRadio;

  final Map<int, String> radios1 = {5: '5 %', 15: '15 %', 25: '25 %'};
  final Map<int, String> radios2 = {10: '10 %', 20: '20 %', 30: '30 %'};

  void _handleRadioChange(int? value) {
    if (value != null) {
      final viewModel = context.read<CalculateViewModel>();
      viewModel.setTipPercentage(value.toDouble());
      setState(() {
        _selectedRadio = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  ...radios1.entries.map((e) => RadioListTile<int>(
                        dense: true,
                        selectedTileColor: HexColor('D39FF2'),
                        activeColor: HexColor('D39FF2'),
                        value: e.key,
                        groupValue: _selectedRadio,
                        onChanged: _handleRadioChange,
                        title: Text(
                          e.value,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      )),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  ...radios2.entries.map((e) => RadioListTile<int>(
                        dense: true,
                        selectedTileColor: HexColor('D39FF2'),
                        activeColor: HexColor('D39FF2'),
                        value: e.key,
                        groupValue: _selectedRadio,
                        onChanged: _handleRadioChange,
                        title: Text(
                          e.value,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
