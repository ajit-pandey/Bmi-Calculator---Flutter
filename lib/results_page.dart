import 'package:bmi_calculator/constants.dart';
import "package:flutter/material.dart";
import "reusable_cards.dart";
import "bottom_button.dart";

class ResultPage extends StatelessWidget {

ResultPage({@required this.bmiResults,@required this.interpretation,@required this.resultText});
  final String bmiResults;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Your Result",
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(resultText,
                      style:kResultTextStyle),
                      Text(bmiResults,
                      style: kBMITextStyle,),
                      Text(resultText.toUpperCase(),
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,)
                    ],
                  ),
                  ),
            ),
            ButtomBotton(onTap: (){
            Navigator.pop(context);}, buttonTitle: "RECALCULATE")
          ],
        ));
  }
}
