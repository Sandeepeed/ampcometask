import 'package:flutter/material.dart';
import 'package:uiux/widgets/textWidget.dart';
class GradientWidget extends StatelessWidget {
  final Color color1;
  final Color color2;
  const GradientWidget({Key? key, required this.color1, required this.color2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.28,

      decoration: BoxDecoration(
          color: Colors.green,
          gradient: RadialGradient(colors: [
            color1,
            color2,
          ],
              tileMode: TileMode.repeated,
              center: Alignment.topLeft
          ),
          borderRadius: BorderRadius.circular(10.0)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0,right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    TextWidget(color: Colors.white, fontSize: 13.0, text: "Jul 22", isBold: false),
                    SizedBox(width: 5,),
                    TextWidget(color: Colors.white, fontSize: 13.0, text: "1:00 - 9:00 PM", isBold: false),
                  ],
                ),
                Container(
                  width: size.width * 0.21,
                  height: size.height * 0.06,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5.0),bottomRight: Radius.circular(5.0)),
                      color: Colors.black,
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage("assets/Theshrine.jpg"),
                      )
                  ),
                ),

              ],
            ),
            const SizedBox(height: 10,),
            const TextWidget(color: Colors.white, fontSize: 20.0, text: "Shriners Childern's Boston \$480 at \$15 per hr", isBold: true),
            const SizedBox(height: 10,),
            const TextWidget(color: Colors.white, fontSize: 13.0, text: "227 Madison St. New York, NY 1002, USA", isBold: false),
            const SizedBox(height: 10,),
            Row(
              children: const [
                TextWidget(color: Colors.white, fontSize: 13.0, text: "1.0 miles away", isBold: false),
                SizedBox(width: 10,),
                TextWidget(color: Colors.white, fontSize: 13.0, text: "Registered Nurse", isBold: false),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: size.width * 0.1,
                  height: size.height * 0.03,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: const Center(child: Icon(Icons.arrow_forward,color: Colors.black,),),
                ),
                const SizedBox(width: 10,),
                const TextWidget(color: Colors.white, fontSize: 13.0, text: "Clock Out and Complete Shift", isBold: false)

              ],
            )
          ],
        ),
      ),
    );
  }
}
