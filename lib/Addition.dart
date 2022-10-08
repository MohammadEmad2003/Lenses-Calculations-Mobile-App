// @dart = 2.9
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'Comm/defaultplan.dart';
import 'Comm/genTextFormField.dart';
import 'lensThick.dart';

class add extends StatelessWidget {
  final Map<String, dynamic> data;

  add({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Container(
          child: Column(
            children: [
              plan2(
                  spr: data['sphr'],
                  spl: data['sphl'],
                  cyr: data['cylr'],
                  cyl: data['cyll'],
                  axr: data['axr'],
                  axl: data['axl']),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 25),
                  const Text("Reading",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  plan(
                      spr: data['aspr'],
                      spl: data['aspl'],
                      cyr: data['acyr'],
                      cyl: data['acyl'],
                      axr: data['aar'],
                      axl: data['aal']),
                  const SizedBox(width: 25),
                ],
              ),
            ],
          ),
        ));
  }
}
