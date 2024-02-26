import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'input_page.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
ResultsPage({required this.bmi, required this.result, required this.interpretation});

    final String bmi;
    final String result;
    final String interpretation;
  @override
  Widget build(BuildContext context) {

    

    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text('Your Result:', style: kTitleTextStyle),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                  colour: kCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(result, style: kResultTextStyle),
                      Text(bmi, style: kbmiTextStyle),
                      Text(
                        interpretation,
                        style: kBodyTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  onPress: () {}),
            ),
            BottomButton(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return InputPage();
              }));
            }, buttonTitle: 'RE-CALCULATE')
          ],
        ));
  }
}
