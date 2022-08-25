import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:uiux/widgets/credentials.dart';
import 'package:uiux/widgets/dropdownButton.dart';
import 'package:uiux/widgets/gradientwidget.dart';
import 'package:uiux/widgets/textWidget.dart';
class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children:  [
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 40,right: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          TextWidget(color: Colors.black, fontSize: 20, text: "New York", isBold: true),
                          TextWidget(color: Colors.black38, fontSize: 15.0, text: "254 BroadWay St.", isBold: false),
                        ],
                       ),
                      const CircleAvatar(radius: 20.0,)
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.black38,
                        hintText: "Search Facilities",
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none
                        )
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      DropDownButton(dropDownValue: "Facilities"),
                      SizedBox(width: 10,),
                      DropDownButton(dropDownValue: "Date"),
                      SizedBox(width: 10,),
                      DropDownButton(dropDownValue: "Shift Type"),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.only(right: 20,top: 10),
              width: size.width,
              height: size.height * 0.6,
              color: const Color(0xf5f8fa),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  const [
                    TextWidget(color: Colors.black, fontSize: 18.0, text: "Kickstart your Journey", isBold: true),
                    SizedBox(height: 5,),
                    TextWidget(color: Colors.black45, fontSize: 16.0, text: "Please Complete the credentialing process to start applying for shifts.", isBold: false,height : 1.5),
                    SizedBox(height: 10,),
                    CredentialsStackWidget(mainText: "Submit Your Credentials", subText: "Upload Documents to get started", isIcon: false,number: "1",),
                    SizedBox(height: 10,),
                    CredentialsStackWidget(mainText: "Document Verification", subText: "Caregigs team will verify your credentials", isIcon: true, number: "2"),
                    SizedBox(height: 10,),
                    CredentialsStackWidget(mainText: "Interview", subText: "A brief interview to understand requirements", isIcon: true, number: "3")
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 0,right: 20),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GradientWidget(color1: Colors.green[900]!, color2: Colors.green[800]!),
                  const SizedBox(height: 10,),
                  const TextWidget(color: Colors.black, fontSize: 18.0, text: "Requires your attention", isBold: true),
                  const SizedBox(height: 10,),
                  GradientWidget(color1: Colors.blue[900]!, color2: Colors.blue[800]!),
                  const SizedBox(height: 20,),
                  const TextWidget(color: Colors.black, fontSize: 18.0, text: "My Calendar", isBold: true),
                  const SizedBox(height: 10,),
                  TableCalendar(
                    focusedDay: DateTime.now(),
                    firstDay: DateTime.utc(2010,3,16),
                    lastDay: DateTime(2030,12,16),)
                  ],
              ),
            ),
            const SizedBox(height: 20,),
             ],
        ),
      ),
    );
  }
}
