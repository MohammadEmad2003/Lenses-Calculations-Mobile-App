// @dart = 2.9
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Addition.dart';
import 'Comm/defaultplan.dart';
import 'Comm/genTextFormField.dart';
import 'Transposition.dart';
import 'lensThick.dart';

class cont extends StatelessWidget {
  final Map<String, dynamic> data;

  cont({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Column(
        children: <Widget>[
          plan2(
              spr: data['sphr'],
              spl: data['sphl'],
              cyr: data['cylr'],
              cyl: data['cyll'],
              axr: data['axr'],
              axl: data['axl']),
          const SizedBox(height: 40),
          const Text("Contact Lens",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 35.0),
                child: plancont(spr: data['conr'], spl: data['conl']),
              ),
            ],
          ),
          const SizedBox(height: 38),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 25),
              const Text("Toric Contact Lens",
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
                  spr: data['cspr'],
                  spl: data['cspl'],
                  cyr: data['ccyr'],
                  cyl: data['ccyl'],
                  axr: data['car'],
                  axl: data['cal']),
              const SizedBox(width: 25),
            ],
          ),
        ],
      ),
    );
  }
}
