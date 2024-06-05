import 'package:flutter/material.dart';
import '../brain_and_constant/consants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
    required this.onTap,
    required this.buttonTitle,
    this.containerColor = kBottomContainerColour, // Add a new parameter for container color
  });

  final void Function()? onTap;
  final String buttonTitle;
  final Color containerColor; // Add a new property for container color

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: containerColor, // Use the provided container color
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}