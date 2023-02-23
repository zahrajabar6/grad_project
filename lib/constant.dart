//declare the constants used in the app

import 'package:flutter/material.dart';

const Color lightGrey = Color(0xffb0b2b2);
const Color mainBlue = Color(0xff5889B5);
const buttonTextStyle =
    TextStyle(fontSize: 22, fontWeight: FontWeight.w400, color: Colors.white);

const cardTitleTextStyle =
    TextStyle(fontSize: 22, color: mainBlue, fontWeight: FontWeight.w500);

const cardTextTextStyle =
    TextStyle(fontSize: 18, color: lightGrey, fontWeight: FontWeight.w500);

const batteryLabelTextStyle =
    TextStyle(color: mainBlue, fontSize: 30, fontWeight: FontWeight.w400);

const batteryStateTextStyle =
    TextStyle(color: lightGrey, fontSize: 25, fontWeight: FontWeight.normal);

const batteryPercentTextStyle =
    TextStyle(color: lightGrey, fontSize: 65, fontWeight: FontWeight.w400);

const pageLabelTextStyle = TextStyle(color: mainBlue, fontSize: 24);

const loginLableTextStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.black54,
    letterSpacing: 4);

const loginTextTextStyle = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w300,
  color: Colors.white,
);

const appBarTextStyle = TextStyle(fontSize: 26);

const kTextFieldDecoration = InputDecoration(
  hintText: 'hint text',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);