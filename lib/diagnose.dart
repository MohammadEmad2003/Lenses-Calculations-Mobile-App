// @dart = 2.9
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lensesproject/Comm/Toast.dart';
import 'package:lensesproject/Comm/genTextFormField.dart';
import 'package:lensesproject/lensThick.dart';
import 'package:lensesproject/mother.dart';

import 'Addition.dart';
import 'Comm/defaultplan.dart';

Future<Map<String, dynamic>> getData() async {
  return Future.delayed(Duration(seconds: 1), () => {'prop1': '2'});
}

class dia extends StatefulWidget {
  @override
  _diaState createState() => _diaState();
}

class _diaState extends State<dia> {
  Map<String, dynamic> data;

  FocusNode fsphr = FocusNode();
  FocusNode fsphl = FocusNode();
  FocusNode fcylr = FocusNode();
  FocusNode fcyll = FocusNode();
  FocusNode faxr = FocusNode();
  FocusNode faxl = FocusNode();
  FocusNode fbvd = FocusNode();
  FocusNode fdia = FocusNode();
  FocusNode fct = FocusNode();
  FocusNode fed = FocusNode();
  FocusNode fas = FocusNode();
  FocusNode fipd = FocusNode();
  FocusNode fbri = FocusNode();
  FocusNode fadd = FocusNode();
  FocusNode fbs = FocusNode();
  FocusNode fph = FocusNode();

  @override
  void initState() {
    super.initState();
    fsphr.addListener(() {
      if (!fsphr.hasFocus) {
        plus(tsphr, fsphr);
      }
    });
    fsphl.addListener(() {
      if (!fsphl.hasFocus) {
        plus(tsphl, fsphl);
      }
    });
    fcylr.addListener(() {
      if (!fcylr.hasFocus) {
        plus(tcylr, fcylr);
      }
    });
    fcyll.addListener(() {
      if (!fcyll.hasFocus) {
        plus(tcyll, fcyll);
      }
    });
    faxr.addListener(() {
      if (!faxr.hasFocus) {
        ax(taxr, faxr);
      }
    });
    faxl.addListener(() {
      if (!faxl.hasFocus) {
        ax(taxl, faxl);
      }
    });
    fbvd.addListener(() {
      print(fbvd.hasFocus);
    });
    fdia.addListener(() {
      if (fdia.hasFocus) {
        DiaExceptions();
      }
    });
    fadd.addListener(() {
      print(fadd.hasFocus);
    });
    fct.addListener(() {
      print(fct.hasFocus);
    });
    fipd.addListener(() {
      print(fipd.hasFocus);
    });
    fed.addListener(() {
      print(fed.hasFocus);
    });
    fas.addListener(() {
      print(fas.hasFocus);
    });
    fbri.addListener(() {
      print(fbri.hasFocus);
    });
    getData().then((values) {
      setState(() {
        data = values;
      });
    });
  }

  Widget getPage(int index) {
    switch (index) {
      case 0:
        return lensthick(data: data);
        break;
      case 1:
        return add(data: data);
        break;
      default:
        return lensthick();
        break;
    }
  }

  int _currentIndex = 0;

  onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final tsphr = TextEditingController();
  final tsphl = TextEditingController();
  final tcylr = TextEditingController();
  final tcyll = TextEditingController();
  final taxr = TextEditingController();
  final taxl = TextEditingController();
  final adicon = TextEditingController();
  final ipdcon = TextEditingController();
  final ascon = TextEditingController();
  final bvcon = TextEditingController();
  final dicon = TextEditingController();
  final ctcon = TextEditingController();
  final brcon = TextEditingController();
  final edcon = TextEditingController();
  final bscon = TextEditingController();
  final phcon = TextEditingController();

  String spr = "", spl = "", cyr = "", cyl = "", ar = "", al = "", ipd = "";
  String rw = "", di = "", ct = "1.2", br = "", bv = "12", ed = "2", ad = "";
  String aspr = "", aspl = "", acyr = "", acyl = "", aar = "", aal = "";
  String tspr = "", tspl = "", tcyr = "", tcyl = "", tar = "", tal = "";
  String cspr = "", cspl = "", ccyr = "", ccyl = "", car = "", cal = "";
  String conr = "", conl = "";

  double sphr, sphl, cyll, cylr, axl, h, axr, F, cylcr, sphcr, cylcl, sphcl;
  double d = 0;

  bool r = false, l = false;

  Widget button() {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            shadowColor: MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0))),
        child: Text(
          'Calculate',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          if (((tsphr.text == "") && (tsphl.text == ""))) {
            alertDilog(context, "You have to enter sphere");
          } else {
            Empty();
            getdata();
            Thick();
            print(data['sphl']);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => mainscreen(
                          data: data,
                        )));
          }
        },
      ),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.blue, // Navigation bar
            statusBarColor: Color.fromRGBO(28, 105, 163, 100), // Status bar
          ),
          title: const Text('Lenses Calculator'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Row(
                          children: <Widget>[
                            RL(),
                            SizedBox(width: 10),
                            costumTF(
                              contr: tsphr,
                              contl: tsphl,
                              name1: "SPH",
                              fs: 0,
                              name2: "",
                              focus1: fsphr,
                              focus2: fsphl,
                            ),
                            costumTF(
                              contr: tcylr,
                              contl: tcyll,
                              name1: "CYL",
                              fs: 0,
                              name2: "",
                              focus1: fcylr,
                              focus2: fcyll,
                            ),
                            costumTF(
                              contr: taxr,
                              contl: taxl,
                              name1: "Axis",
                              fs: 0,
                              name2: "",
                              focus1: faxr,
                              focus2: faxl,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width: 30),
                        costumTF2(
                          cont1: ipdcon,
                          cont2: adicon,
                          name1: 'I.P.D',
                          name2: 'Add',
                          focus1: fipd,
                          focus2: fadd,
                        )
                      ]),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      costumTF3(
                          cont1: ascon,
                          cont2: bscon,
                          cont3: phcon,
                          name1: "A Size",
                          name2: "B Size",
                          name3: "P.H",
                          focus1: fas,
                          focus2: fbs,
                          focus3: fph,
                          fs: 20),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      costumTF2(
                          cont1: brcon,
                          cont2: dicon,
                          name1: "Bridge",
                          name2: "Diameter",
                          focus1: fbri,
                          focus2: fdia,
                          fs: 20),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      costumTF3(
                          cont1: ctcon,
                          cont2: bvcon,
                          cont3: edcon,
                          name1: "C.T",
                          name2: "B.V.D",
                          name3: "Edging",
                          hint1: "1.2 mm",
                          hint2: "12 mm",
                          hint3: "2 mm",
                          focus1: fct,
                          focus2: fbvd,
                          focus3: fed,
                          fs: 20),
                    ],
                  ),
                  SizedBox(height: 30),
                  button(),
                ],
              ),
            ),
          ),
        ));
  }

  // Diameter

  void Power(double k, bool x) {
    if (k < 0) {
      x = true; // Edge thickness
    } else {
      x = false; // Center Thickness
    }
  }

  void getNum() {
    spr = tsphr.text;
    cyr = tcylr.text;
    ar = taxr.text;
    spl = tsphl.text;
    cyl = tcyll.text;
    al = taxl.text;
    if (cyr == "") {
      cylr = 0;
    } else {
      cylr = double.parse(cyr);
    }
    if (cyl == "") {
      cyll = 0;
    } else {
      cyll = double.parse(cyl);
    }
    if (spr == "") {
      sphr = 0;
    } else {
      sphr = double.parse(spr);
    }
    if (spl == "") {
      sphl = 0;
    } else {
      sphl = double.parse(spl);
    }
  }

  void Diameter() {
    getNum();
    if (edcon.text == "")
      ed = "2";
    else
      ed = edcon.text;
    double e = double.parse(ed);

    if (!(ascon.text == "") && !(brcon.text == "") && !(ipdcon.text == "")) {
      double IPD = double.parse(ipdcon.text);
      double FW = double.parse(ascon.text);
      double Brid = double.parse(brcon.text);
      double y = FW + Brid;
      d = y - IPD + FW;
      d += e;
    } else if (!(dicon.text == "") &&
        !(dicon.text == "65") &&
        !(dicon.text == "70")) {
      d = double.parse(dicon.text);
    } else if ((sphr + cylr) > 0 || (sphl + cyll) > 0) {
      d = 65;
    } else if ((sphr + cylr) < 0 || (sphl + cyll) < 0) {
      d = 70;
    }
    di = d.toStringAsFixed(0);
    dicon.text = di;
    h = d / 2;
  }

  void Right() {
    spr = tsphr.text;
    cyr = tcylr.text;
    ar = taxr.text;
    Diameter();
    getNum();
    double k_r = 0;
    String CYL_r = cyr;
    String SPH_r = spr;
    String AX_r = ar;

    if (ctcon.text == "")
      ct = "1.5";
    else
      ct = ctcon.text;
    double e = double.parse(ct);

    double v = sphr + cylr;

    if (!(ar == "") && !(ar == "0")) {
      axr = double.parse(AX_r);

      if (CYL_r == "") {
        sphr = double.parse(SPH_r);
        k_r = sphr;
      } else if (SPH_r == "") {
        cylr = double.parse(CYL_r);
        k_r = cylr;
      }

      double cylxr = cylr;
      if (cylxr < 0) cylxr *= -1;
      double sphxr = sphr;
      if (sphxr < 0) sphxr *= -1;

      if ((sphr < 0) && (cylr < 0)) {
        if (axr < 90) {
          cylr *= axr / 90;
        } else if (axr > 90) {
          axr = 180 - axr;
          cylr *= axr / 90;
        } else if (axr == 90) {}
        k_r = cylr + sphr;
        printright(e, v);
      } else if ((sphr > 0) && (cylr > 0)) {
        if (axr < 90) {
          axr = 90 - axr;
          cylr *= axr / 90;
        } else if (axr > 90) {
          axr = axr - 90;
          cylr *= axr / 90;
        } else if (axr == 90) {
          k_r = sphr;
          cylr = 0;
        }
        k_r = cylr + sphr;
        printright(e, v);
      } else if ((((sphr < 0) && (cylr > 0)) || ((sphr > 0) && (cylr < 0))) &&
          (sphxr > cylxr)) {
        sphr = sphr + cylr;
        cylr *= -1;
        if (axr > 90)
          axr -= 90;
        else if (axr <= 90) axr += 90;

        if ((sphr < 0) && (cylr < 0)) {
          if (axr < 90) {
            cylr *= axr / 90;
          } else if (axr > 90) {
            axr = 180 - axr;
            cylr *= axr / 90;
          } else if (axr == 90) {}
          k_r = cylr + sphr;
        } else if ((sphr > 0) && (cylr > 0)) {
          if (axr < 90) {
            axr = 90 - axr;
            cylr *= axr / 90;
          } else if (axr > 90) {
            axr = axr - 90;
            cylr *= axr / 90;
          } else if (axr == 90) {
            k_r = sphr;
            cylr = 0;
          }
          k_r = cylr + sphr;
        }
        printright(e, v);
      } else if ((((sphr < 0) && (cylr > 0)) || ((sphr > 0) && (cylr < 0))) &&
          (sphxr < cylxr)) {
        if (cylr < 0) {
          if (axr < 90) {
            cylr *= axr / 90;
          } else if (axr > 90) {
            axr = 180 - axr;
            cylr *= axr / 90;
          } else if (axr == 90) {}
          k_r = cylr + sphr;
        } else if (cylr > 0) {
          if (axr < 90) {
            axr = 90 - axr;
            cylr *= axr / 90;
          } else if (axr > 90) {
            axr = axr - 90;
            cylr *= axr / 90;
          } else if (axr == 90) {
            k_r = sphr;
            cylr = 0;
          }
          k_r = cylr + sphr;
        }
        printright(0, v);
      }
    } else if (AX_r == "") {
      if ((!(CYL_r == "") && !(SPH_r == ""))) {
        sphr = double.parse(spr);
        cylr = double.parse(cyr);
        k_r = cylr + sphr;
        if (cylr < 0)
          ar = "90";
        else if (cylr > 0) ar = "180";
      } else if (CYL_r == "") {
        sphr = double.parse(SPH_r);
        k_r = sphr;
      } else if (SPH_r == "") {
        cylr = double.parse(CYL_r);
        k_r = cylr;
        if (cylr < 0)
          ar = "90";
        else if (cylr > 0) ar = "180";
      }
      printright(e, v);
    }
  }

  void Left() {
    spl = tsphl.text;
    cyl = tcyll.text;
    al = taxl.text;
    Diameter();
    getNum();
    double k_l = 0;
    String CYL_l = cyl;
    String SPH_l = spl;
    String AX_l = al;

    if (ctcon.text == "")
      ct = "1.5";
    else
      ct = ctcon.text;
    double e = double.parse(ct);

    double v = sphl + cyll;

    if (!(al == "") && !(al == "0")) {
      axl = double.parse(AX_l);

      if (CYL_l == "") {
        sphl = double.parse(SPH_l);
        k_l = sphl;
      } else if (SPH_l == "") {
        cyll = double.parse(CYL_l);
        k_l = cyll;
      }

      double cylxl = cyll;
      if (cylxl < 0) cylxl *= -1;
      double sphxl = sphl;
      if (sphxl < 0) sphxl *= -1;

      if ((sphl < 0) && (cyll < 0)) {
        if (axl < 90) {
          cyll *= axl / 90;
        } else if (axl > 90) {
          axl = 180 - axl;
          cyll *= axl / 90;
        } else if (axl == 90) {}
        k_l = cyll + sphl;
        printleft(e, v);
      } else if ((sphl > 0) && (cyll > 0)) {
        if (axl < 90) {
          axl = 90 - axl;
          cyll *= axl / 90;
        } else if (axl > 90) {
          axl = axl - 90;
          cyll *= axl / 90;
        } else if (axl == 90) {
          k_l = sphl;
          cyll = 0;
        }
        k_l = cyll + sphl;
        printleft(e, v);
      } else if ((((sphl < 0) && (cyll > 0)) || ((sphl > 0) && (cyll < 0))) &&
          (sphxl > cylxl)) {
        sphl = sphl + cyll;
        cyll *= -1;
        if (axl > 90)
          axl -= 90;
        else if (axl <= 90) axl += 90;

        if ((sphl < 0) && (cyll < 0)) {
          if (axl < 90) {
            cyll *= axl / 90;
          } else if (axl > 90) {
            axl = 180 - axl;
            cyll *= axl / 90;
          } else if (axl == 90) {}
          k_l = cyll + sphl;
        } else if ((sphl > 0) && (cyll > 0)) {
          if (axl < 90) {
            axl = 90 - axl;
            cyll *= axl / 90;
          } else if (axl > 90) {
            axl = axl - 90;
            cyll *= axl / 90;
          } else if (axl == 90) {
            k_l = sphl;
            cyll = 0;
          }
          k_l = cyll + sphl;
        }
        printleft(e, v);
      } else if ((((sphl < 0) && (cyll > 0)) || ((sphl > 0) && (cyll < 0))) &&
          (sphxl < cylxl)) {
        if (cyll < 0) {
          if (axl < 90) {
            cyll *= axl / 90;
          } else if (axl > 90) {
            axl = 180 - axl;
            cyll *= axl / 90;
          } else if (axl == 90) {}
          k_l = cyll + sphl;
        } else if (cyll > 0) {
          if (axl < 90) {
            axl = 90 - axl;
            cyll *= axl / 90;
          } else if (axl > 90) {
            axl = axl - 90;
            cyll *= axl / 90;
          } else if (axl == 90) {
            k_l = sphl;
            cyll = 0;
          }
          k_l = cyll + sphl;
        }
        printleft(0, v);
      }
    } else if (AX_l == "") {
      if ((!(CYL_l == "") && !(SPH_l == ""))) {
        sphl = double.parse(spl);
        cyll = double.parse(cyl);
        k_l = cyll + sphl;
        if (cyll < 0)
          al = "90";
        else if (cyll > 0) al = "180";
      } else if (CYL_l == "") {
        sphl = double.parse(SPH_l);
        k_l = sphl;
      } else if (SPH_l == "") {
        cyll = double.parse(CYL_l);
        k_l = cyll;
        if (cyll < 0)
          al = "90";
        else if (cyll > 0) al = "180";
      }
      printleft(e, v);
    }
  }

  // Lens Thickness

  void printright(double e1, double k) {
    if (k < 0) {
      k *= -1;
    }
    double n_r = (h * h) * k;

    data['r0'] = ((n_r / 1000) + e1).toStringAsFixed(2);
    data['r1'] = ((n_r / 1060) + e1).toStringAsFixed(2);
    data['r2'] = ((n_r / 1120) + e1).toStringAsFixed(2);
    data['r3'] = ((n_r / 1180) + e1).toStringAsFixed(2);
    data['r4'] = ((n_r / 1200) + e1).toStringAsFixed(2);
    data['r5'] = ((n_r / 1340) + e1).toStringAsFixed(2);
    data['r6'] = ((n_r / 1480) + e1).toStringAsFixed(2);
    data['r7'] = ((n_r / 1520) + e1).toStringAsFixed(2);
    data['r8'] = ((n_r / 1400) + e1).toStringAsFixed(2);
    data['r9'] = ((n_r / 1600) + e1).toStringAsFixed(2);
    data['r10'] = ((n_r / 1800) + e1).toStringAsFixed(2);
  }

  void printleft(double e1, double k) {
    if (k < 0) {
      k *= -1;
    }
    double n_l = (h * h) * k;

    data['l0'] = ((n_l / 1000) + e1).toStringAsFixed(2);
    data['l1'] = ((n_l / 1060) + e1).toStringAsFixed(2);
    data['l2'] = ((n_l / 1120) + e1).toStringAsFixed(2);
    data['l3'] = ((n_l / 1180) + e1).toStringAsFixed(2);
    data['l4'] = ((n_l / 1200) + e1).toStringAsFixed(2);
    data['l5'] = ((n_l / 1340) + e1).toStringAsFixed(2);
    data['l6'] = ((n_l / 1480) + e1).toStringAsFixed(2);
    data['l7'] = ((n_l / 1520) + e1).toStringAsFixed(2);
    data['l8'] = ((n_l / 1400) + e1).toStringAsFixed(2);
    data['l9'] = ((n_l / 1600) + e1).toStringAsFixed(2);
    data['l10'] = ((n_l / 1800) + e1).toStringAsFixed(2);
  }

  void Thick() {
    if (tsphr.text == "") {
      Left();
    } else if (tsphl.text == "") {
      Right();
    } else if (!(tsphl.text == "") && !(tsphr.text == "")) {
      Right();
      Left();
    }
  }

// tools

  void Empty() {
    data['l0'] = '';
    data['l1'] = '';
    data['l2'] = '';
    data['l3'] = '';
    data['l4'] = '';
    data['l5'] = '';
    data['l6'] = '';
    data['l7'] = '';
    data['l8'] = '';
    data['l9'] = '';
    data['l10'] = '';
    data['r0'] = '';
    data['r1'] = '';
    data['r2'] = '';
    data['r3'] = '';
    data['r4'] = '';
    data['r5'] = '';
    data['r6'] = '';
    data['r7'] = '';
    data['r8'] = '';
    data['r9'] = '';
    data['r10'] = '';
    data['aspr'] = '';
    data['tspr'] = '';
    data['cspr'] = '';
    data['acyr'] = '';
    data['tcyr'] = '';
    data['ccyr'] = '';
    data['aspl'] = '';
    data['tspl'] = '';
    data['cspl'] = '';
    data['acyl'] = '';
    data['tcyl'] = '';
    data['ccyl'] = '';
    data['aar'] = '';
    data['tar'] = '';
    data['car'] = '';
    data['aal'] = '';
    data['tal'] = '';
    data['cal'] = '';
    data['conl'] = '';
    data['conr'] = '';
    data['sphr'] = '';
    data['sphl'] = '';
    data['cylr'] = '';
    data['cyll'] = '';
    data['axr'] = '';
    data['axl'] = '';
  }

  void getdata() {
    data['sphr'] = tsphr.text;
    data['sphl'] = tsphl.text;
    data['cylr'] = tcylr.text;
    data['cyll'] = tcyll.text;
    data['axr'] = taxr.text;
    data['axl'] = taxl.text;
    data['bvd'] = bvcon.text;
    data['adicon'] = adicon.text;
  }

  void plus(TextEditingController t, FocusNode f) {
    String x = t.text;
    if (x != "") {
      double mx = double.parse(x);
      if ((mx % 0.25 != 0)) {
        alertDialog(context, "Please enter a number divisible by 0.25");
        f.requestFocus();
      }
      if ((mx > 20) || (mx < -20)) {
        alertDialog(
            context, "You can't enter number more than 20 or less than -20");
        f.requestFocus();
      }
      x = mx.toStringAsFixed(2);
      String y = x[0];
      if (!(y == '-') && !(y == '+')) {
        x = "+" + x;
      }
    }
    setState(() {
      t.text = x;
    });
  }

  void ax(TextEditingController l, FocusNode f) {
    if (l.text == "") {
    } else if (double.parse(l.text) > 180) {
      f.requestFocus();
      alertDialog(context, "Axis can't be more than 180 degree");
      FocusScopeNode currentFocus = FocusScope.of(context);
    }
  }

  void DiaExceptions() {
    if (!(dicon.text == "") &&
        !(ascon.text == "") &&
        !(brcon.text == "") &&
        !(ipdcon.text == "")) {
      fbri.requestFocus();
      alertDialog(context,
          "If you want to change the diameter please clear I.P.D, Bridge and Frame Width fields");
    } else if (!(ascon.text == "") &&
        !(brcon.text == "") &&
        !(ipdcon.text == "")) {
      fbri.requestFocus();
      alertDialog(context,
          "If you want to Enter thediameter please clear I.P.D, Bridge and Frame Width fields");
    } else if (!(ascon.text == "") && !(ipdcon.text == "")) {
      fbri.requestFocus();
      alertDialog(context,
          "If you want to Enter the diameter please clear I.P.D and Frame Width fields");
    } else if (!(ipdcon.text == "") && !(brcon.text == "")) {
      fbri.requestFocus();
      alertDialog(context,
          "If you want to Enter the diameter please clear I.P.D and Bridge fields");
    } else if (!(ascon.text == "") && !(brcon.text == "")) {
      fbri.requestFocus();
      alertDialog(context,
          "If you want to Enter the diameter please clear Bridge and Frame Width fields");
    } else if (!(ipdcon.text == "")) {
      fbri.requestFocus();
      alertDialog(context,
          "If you want to Enter the diameter please clear I.P.D field");
    } else if (!(brcon.text == "")) {
      fbri.requestFocus();
      alertDialog(context,
          "If you want to Enter the diameter please clear Bridge field");
    } else if (!(ascon.text == "")) {
      fbri.requestFocus();
      alertDialog(context,
          "If you want to Enter the diameter please clear Frame Width field");
    }
  }
}
