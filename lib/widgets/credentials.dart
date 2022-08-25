import 'package:flutter/material.dart';
import 'package:uiux/widgets/textWidget.dart';
class CredentialsStackWidget extends StatelessWidget {
  final String mainText;
  final String subText;
  final bool isIcon;
  final String number;
  const CredentialsStackWidget({Key? key, required this.mainText, required this.subText, required this.isIcon, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(left: 2),
      width: size.width * 1,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 0.0,left: 25,right: 25),
            width: size.width * 0.85,
            height: size.height * 0.14,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.blue,width: 1.5)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    TextWidget(color: Colors.blue, fontSize: 16.0, text: mainText, isBold: true),
                    isIcon == true? const Icon(Icons.lock,color: Colors.black54,): const TextWidget(color: Colors.blue, fontSize: 16.0, text: "Start", isBold: true),
                  ],
                ),
                const SizedBox(height: 15,),
                TextWidget(color: Colors.black54 , fontSize: 15.0, text: subText, isBold: false)
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: size.width * 0.1,
              height: size.height * 0.1,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.blue,width: 2),
                  shape: BoxShape.circle
              ),
              child:  Center(child: TextWidget(color: Colors.blue, fontSize: 15.0, text: number, isBold: true)),
            ),
          )
        ],
      ),
    );
  }
}
