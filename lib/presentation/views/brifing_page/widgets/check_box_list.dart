import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kachaika/presentation/viewmodels/calculate_view_model.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class RadioGroup extends StatefulWidget {
  const RadioGroup({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RadioGroupState createState() => _RadioGroupState();
}

class _RadioGroupState extends State<RadioGroup> {
  int? _selectedRadio;

  int? get selectedRadio => _selectedRadio;
  Map<dynamic, dynamic> radios1 = {5: '5 %', 15: '15 %', 25: '25 %'};
  Map<dynamic, dynamic> radios2 = {10: '10 %', 20: '20 %', 30: '30 %'};

  void _handleRadioChange(value) {
    CalculateModel modelcalculate = context.read<CalculateModel>();
    modelcalculate.getCalculateProcent(value);
    setState(() {
      _selectedRadio = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CalculateModel()),
      ],
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(children: [
                  ...radios1.entries.map((e) => RadioListTile(
                      dense: true,
                      selectedTileColor: HexColor('D39FF2'),
                      activeColor: HexColor('D39FF2'),
                      value: e.key,
                      groupValue: _selectedRadio,
                      onChanged: _handleRadioChange,
                      title: Text(
                        '${e.value}',
                        style: Theme.of(context).textTheme.bodyLarge,
                      )))
                ]),
              ),
              Expanded(
                  flex: 1,
                  child: Column(children: [
                    ...radios2.entries.map((e) => RadioListTile(
                        dense: true,
                        selectedTileColor: HexColor('D39FF2'),
                        activeColor: HexColor('D39FF2'),
                        value: e.key,
                        groupValue: _selectedRadio,
                        onChanged: _handleRadioChange,
                        title: Text(
                          '${e.value}',
                          style: Theme.of(context).textTheme.bodyLarge,
                        )))
                  ]))
            ],
          ),
        ],
      ),
    );
  }
}
