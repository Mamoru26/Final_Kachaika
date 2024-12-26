import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../../core/export.dart';

class TipsTable extends StatelessWidget {
  const TipsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 264,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: HexColor('1D1D1D').withOpacity(100 / 100),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15))),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 7),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 2,
                      child: DynamicTextWidget(
                        text: 'Процент чаевых',
                        textalign: TextAlign.left,
                      )),
                  Expanded(
                      flex: 1,
                      child: DynamicTextWidget(
                        text: 'Tip',
                        textalign: TextAlign.right,
                      )),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: HexColor('7A7FF4').withOpacity(50 / 100),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 7),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 2,
                      child: DynamicTextWidget(
                        text: '5% чаевых',
                        textalign: TextAlign.left,
                      )),
                  Expanded(
                      flex: 1,
                      child: DynamicTextWidget(
                        text: '5',
                        textalign: TextAlign.right,
                      )),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: HexColor('D39FF2').withOpacity(50 / 100),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 7),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 2,
                      child: DynamicTextWidget(
                        text: '10% чаевых',
                        textalign: TextAlign.left,
                      )),
                  Expanded(
                      flex: 1,
                      child: DynamicTextWidget(
                        text: '10',
                        textalign: TextAlign.right,
                      )),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: HexColor('7A7FF4').withOpacity(50 / 100),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 7),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 2,
                      child: DynamicTextWidget(
                        text: '15% чаевых',
                        textalign: TextAlign.left,
                      )),
                  Expanded(
                      flex: 1,
                      child: DynamicTextWidget(
                        text: '15',
                        textalign: TextAlign.right,
                      )),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: HexColor('D39FF2').withOpacity(50 / 100),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 7),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 2,
                      child: DynamicTextWidget(
                        text: '20% чаевых',
                        textalign: TextAlign.left,
                      )),
                  Expanded(
                      flex: 1,
                      child: DynamicTextWidget(
                        text: '20',
                        textalign: TextAlign.right,
                      )),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: HexColor('7A7FF4').withOpacity(50 / 100),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 7),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 2,
                      child: DynamicTextWidget(
                        text: '25% чаевых',
                        textalign: TextAlign.left,
                      )),
                  Expanded(
                      flex: 1,
                      child: DynamicTextWidget(
                        text: '25',
                        textalign: TextAlign.right,
                      )),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: HexColor('D39FF2').withOpacity(50 / 100),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 7),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 2,
                      child: DynamicTextWidget(
                        text: '30% чаевых',
                        textalign: TextAlign.left,
                      )),
                  Expanded(
                      flex: 1,
                      child: DynamicTextWidget(
                        text: '30',
                        textalign: TextAlign.right,
                      )),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
