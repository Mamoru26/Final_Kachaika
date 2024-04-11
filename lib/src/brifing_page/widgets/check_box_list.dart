import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class RadioGroup extends StatefulWidget {
  const RadioGroup({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RadioGroupState createState() => _RadioGroupState();
}

class _RadioGroupState extends State<RadioGroup> {
  int? _selectedRadio;

  int? get selectedRadio => _selectedRadio;

  Map<dynamic, dynamic> radios1 = {1: '5 %', 2: '15 %', 3: '25 %'};
  Map<dynamic, dynamic> radios2 = {4: '10 %', 5: '20 %', 6: '30 %'};

  void _handleRadioChange(value) {
    setState(() {
      _selectedRadio = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    overlayColor:
                        MaterialStatePropertyAll(HexColor('FFFFFF')),
                    hoverColor: HexColor('FFFFFF'),
                    value: e.key,
                    groupValue: _selectedRadio,
                    onChanged: _handleRadioChange,
                    title: Text(
                      '${e.value}',
                      style: TextStyle(
                          color: HexColor('FFFFFF'),
                          fontSize: 22,
                          fontFamily: 'assets/fonts/SFPROregular.ttf'),
                    )))
              ]),
            ),
            Expanded(
                flex: 1,
                child: Column(children: [
                  ...radios2.entries.map((e) => RadioListTile(
                    dense: true,
                      activeColor: HexColor('D39FF2'),
                      value: e.key,
                      groupValue: _selectedRadio,
                      onChanged: _handleRadioChange,
                      title: Text(
                        '${e.value}',
                        style: TextStyle(
                            color: HexColor('FFFFFF'),
                            fontSize: 22,
                            fontFamily: 'assets/fonts/SFPROregular.ttf'),
                      )))
                ]))
          ],
        ),
      ],
    );
  }
}
