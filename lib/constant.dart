//declare the constants used in the app

import 'package:flutter/material.dart';

const Color lightGrey = Color(0xffb0b2b2);
const Color mainBlue = Color(0xff00adee);
const Color secondaryBlue = Color(0xfff2fcff);
const buttonTextStyle =
    TextStyle(fontSize: 22, fontWeight: FontWeight.w400, color: Colors.white);

const cardBigTitleTextStyle =
    TextStyle(fontSize: 20, color: mainBlue, fontWeight: FontWeight.w400);

const cardTitleTextStyle =
    TextStyle(fontSize: 16, color: mainBlue, fontWeight: FontWeight.w400);

const cardTextTextStyle =
    TextStyle(fontSize: 14, color: Color.fromRGBO(189, 189, 189, 1));

const cardValueTextStyle = TextStyle(fontSize: 28, color: lightGrey);

const drawerTextTextStyle = TextStyle(
    fontSize: 18,
    color: Color.fromARGB(255, 91, 91, 91),
    fontWeight: FontWeight.w400);

const batteryLabelTextStyle =
    TextStyle(color: mainBlue, fontSize: 30, fontWeight: FontWeight.w400);

const batteryStateTextStyle =
    TextStyle(color: lightGrey, fontSize: 25, fontWeight: FontWeight.normal);

const batteryPercentTextStyle =
    TextStyle(color: lightGrey, fontSize: 65, fontWeight: FontWeight.w400);

const pageLabelTextStyle =
    TextStyle(color: mainBlue, fontSize: 24, fontWeight: FontWeight.w400);

const pageTextTextStyle =
    TextStyle(color: lightGrey, fontSize: 16, fontWeight: FontWeight.normal);

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

const appBarTextStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.w400);

const kTextFieldDecoration = InputDecoration(
  hintText: 'hint text',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: mainBlue, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: mainBlue, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: mainBlue, width: 2.0),
  ),
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kSendButtonTextStyle = TextStyle(
  color: mainBlue,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const snackBar = SnackBar(
  content: Text(
    'Wrong Email or Password',
    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
  ),
  backgroundColor: Color.fromARGB(255, 189, 54, 54),
);
