import 'package:flutter/material.dart';

class SuccessMessageAnimation extends StatelessWidget {
  final bool showSuccess;
  SuccessMessageAnimation({required this.showSuccess});

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: showSuccess ? 1.0 : 0.0,
      duration: Duration(seconds: 1),
      child: showSuccess
          ? Text(
              "Transaction Successful",
              style: TextStyle(color: Colors.green, fontSize: 20),
            )
          : SizedBox.shrink(),
    );
  }
}
