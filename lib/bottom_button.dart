import "package:flutter/material.dart";
import "constants.dart";
class ButtomBotton extends StatelessWidget {
  ButtomBotton({@required this.onTap, @required this.buttonTitle});
  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        // padding: EdgeInsets.only(bottom:20),
        color: kBottomCardColor,
        margin: EdgeInsets.only(
          top: 20,
        ),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}