// @dart = 2.9
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class costumTF extends StatelessWidget {
  TextEditingController contr;
  TextEditingController contl;
  String hint1;
  String hint2;
  double h = 0;
  String name1;
  IconData icon;
  String name2 = "";
  bool isObscureText;
  TextInputType inputType;
  bool isEnable;
  FocusNode focus1;
  FocusNode focus2;
  double fs;
  costumTF({
    this.fs,
    this.contr,
    this.contl,
    this.hint1,
    this.hint2,
    this.name1,
    this.name2,
    this.focus1,
    this.focus2,
    this.h,
    this.icon,
    this.isObscureText = false,
    this.inputType = TextInputType.text,
    this.isEnable = true,
  });

  double wid = 95;
  double hi = 50;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        SizedBox(height: 10),
        Text(name1,
            style: TextStyle(
                color: Colors.blue,
                fontSize: 20.0,
                fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          width: wid,
          height: hi,
          child: TextField(
            focusNode: focus1,
            keyboardType:
                TextInputType.numberWithOptions(decimal: true, signed: true),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp('[0-9.,-]')),
            ],
            textAlign: TextAlign.center,
            controller: contr,
            decoration: InputDecoration(
              hintText: hint1,
              contentPadding: EdgeInsets.symmetric(horizontal: 12),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.black38, width: 2)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.blue, width: 2)),
            ),
            style: TextStyle(color: Colors.black, fontSize: 18.0),
          ),
        ),
        SizedBox(height: 10),
        Text(name2,
            style: TextStyle(
                color: Colors.blue, fontSize: fs, fontWeight: FontWeight.bold)),
        SizedBox(height: h),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          width: wid,
          height: hi,
          child: TextField(
            focusNode: focus2,
            keyboardType:
                TextInputType.numberWithOptions(decimal: true, signed: true),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp('[0-9.,-]')),
            ],
            textAlign: TextAlign.center,
            controller: contl,
            decoration: InputDecoration(
              hintText: hint2,
              contentPadding: EdgeInsets.symmetric(horizontal: 12),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.black38, width: 2)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.blue, width: 2)),
            ),
            style: TextStyle(color: Colors.black, fontSize: 18.0),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    ));
  }
}

class costumTF2 extends StatelessWidget {
  TextEditingController cont1;
  TextEditingController cont2;
  String hint1;
  String hint2;
  String name1;
  String name2;
  FocusNode focus1;
  FocusNode focus2;
  ValueChanged change1;
  double fs;
  costumTF2({
    this.fs,
    this.cont1,
    this.cont2,
    this.hint1,
    this.hint2,
    this.name1,
    this.name2,
    this.focus1,
    this.focus2,
  });

  double wid = 95;
  double h = 50;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: <Widget>[
        Column(children: <Widget>[
          Text(name1,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            width: wid,
            height: h,
            child: TextField(
              focusNode: focus1,
              onChanged: change1,
              keyboardType:
                  TextInputType.numberWithOptions(decimal: true, signed: true),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[0-9.,-]')),
              ],
              textAlign: TextAlign.center,
              controller: cont1,
              decoration: InputDecoration(
                hintText: hint1,
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.black38, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.blue, width: 2)),
              ),
              style: TextStyle(color: Colors.black, fontSize: 18.0),
            ),
          ),
        ]),
        SizedBox(width: 20),
        Column(children: <Widget>[
          Text(name2,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            width: wid,
            height: h,
            child: TextField(
              focusNode: focus2,
              keyboardType:
                  TextInputType.numberWithOptions(decimal: true, signed: true),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[0-9.,-]')),
              ],
              textAlign: TextAlign.center,
              controller: cont2,
              decoration: InputDecoration(
                hintText: hint2,
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.black38, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.blue, width: 2)),
              ),
              style: TextStyle(color: Colors.black, fontSize: 18.0),
            ),
          ),
        ]),
      ],
    ));
  }
}

class costumTF3 extends StatelessWidget {
  TextEditingController cont1;
  TextEditingController cont2;
  TextEditingController cont3;
  String hint1;
  String hint2;
  String hint3;
  String name1;
  String name2;
  String name3;
  FocusNode focus1;
  FocusNode focus2;
  FocusNode focus3;
  double fs;
  costumTF3({
    this.fs,
    this.cont1,
    this.cont2,
    this.cont3,
    this.hint1,
    this.hint2,
    this.hint3,
    this.name1,
    this.name2,
    this.name3,
    this.focus1,
    this.focus2,
    this.focus3,
  });

  double wid = 95;
  double h = 50;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: <Widget>[
        Column(children: <Widget>[
          Text(name1,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 4.0),
            width: wid,
            height: h,
            child: TextField(
              focusNode: focus1,
              keyboardType:
                  TextInputType.numberWithOptions(decimal: true, signed: true),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[0-9.,-]')),
              ],
              textAlign: TextAlign.center,
              controller: cont1,
              decoration: InputDecoration(
                hintText: hint1,
                hintStyle: TextStyle(fontSize: 16),
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.black38, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.blue, width: 2)),
              ),
              style: TextStyle(color: Colors.black, fontSize: 18.0),
            ),
          ),
        ]),
        Column(children: <Widget>[
          Text(name2,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 4.0),
            width: wid,
            height: h,
            child: TextField(
              focusNode: focus2,
              keyboardType:
                  TextInputType.numberWithOptions(decimal: true, signed: true),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[0-9.,-]')),
              ],
              textAlign: TextAlign.center,
              controller: cont2,
              decoration: InputDecoration(
                hintText: hint2,
                hintStyle: TextStyle(fontSize: 16),
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.black38, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.blue, width: 2)),
              ),
              style: TextStyle(color: Colors.black, fontSize: 18.0),
            ),
          ),
        ]),
        Column(children: <Widget>[
          Text(name3,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            width: wid,
            height: h,
            child: TextField(
              focusNode: focus3,
              keyboardType:
                  TextInputType.numberWithOptions(decimal: true, signed: true),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[0-9.,-]')),
              ],
              textAlign: TextAlign.center,
              controller: cont3,
              decoration: InputDecoration(
                hintText: hint3,
                hintStyle: TextStyle(fontSize: 16),
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.black38, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.blue, width: 2)),
              ),
              style: TextStyle(color: Colors.black, fontSize: 18.0),
            ),
          ),
        ])
      ],
    ));
  }
}
