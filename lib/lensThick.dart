// @dart = 2.9
import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lensesproject/Addition.dart';

import 'Comm/defaultplan.dart';
import 'Comm/genTextFormField.dart';

class lensthick extends StatelessWidget {
  final Map<String, dynamic> data;

  lensthick({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              SizedBox(height: 20),
              Column(
                children: [
                  plan2(
                      spr: data['sphr'],
                      spl: data['sphl'],
                      cyr: data['cylr'],
                      cyl: data['cyll'],
                      axr: data['axr'],
                      axl: data['axl']),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: <Widget>[
                          rl(),
                          SizedBox(height: 5),
                          txtf(type: "1.50", r: data['r0'], l: data['l0']),
                          txtf(type: "1.53", r: data['r1'], l: data['l1']),
                          txtf(type: "1.56", r: data['r2'], l: data['l2']),
                          txtf(type: "1.59", r: data['r3'], l: data['l3']),
                          txtf(type: "1.60", r: data['r4'], l: data['l4']),
                          txtf(type: "1.67", r: data['r5'], l: data['l5']),
                          txtf(type: "1.74", r: data['r6'], l: data['l6']),
                          txtf(type: "1.76", r: data['r7'], l: data['l7']),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
