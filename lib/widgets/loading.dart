import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomLoading();
  }
}


Widget CustomLoading(){
    return SafeArea(
      child: Container(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      )
    );
}