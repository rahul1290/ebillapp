import 'package:flutter/material.dart';

Widget loader(){
  return Scaffold(
    body: Container(
      child: Center(
        child: CircularProgressIndicator(
          strokeWidth: 3,
          color: Colors.amberAccent,
        ),
      ),
    ),
  );
}