import 'package:flutter/material.dart';
import 'package:uiux/widgets/textWidget.dart';
class DropDownButton extends StatelessWidget {
  final String dropDownValue;
  const DropDownButton({Key? key, required this.dropDownValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.grey[200]
      ),
      width: size.width * 0.265,
      height: size.height * 0.035,
      child: DropdownButton(
        isExpanded: false,
        alignment: Alignment.center,
        icon: const Icon(Icons.keyboard_arrow_down_sharp,color: Colors.black87,),
        elevation: 0,
        focusColor: Colors.transparent,
        value: dropDownValue,
        items: <String>[dropDownValue, 'Two', 'Free',]
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: TextWidget(color: Colors.black54, fontSize: 15.0, text: value , isBold: true),
          );
        }).toList(), onChanged: (String? value) {  },
      ),
    );
  }
}
