// @dart = 2.9
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lensesproject/Addition.dart';
import 'Addition.dart';

import 'Comm/Toast.dart';
import 'ContactLens.dart';
import 'Transposition.dart';
import 'lensThick.dart';

class mainscreen extends StatefulWidget {
  Map<String, dynamic> data;
  mainscreen({Key key, this.data}) : super(key: key);

  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  // Begin my new code

  String spr = "", spl = "", cyr = "", cyl = "", ar = "", al = "", ipd = "";
  String rw = "", di = "", ct = "1.5", br = "", bv = "12", ed = "2", ad = "";
  String aspr = "", aspl = "", acyr = "", acyl = "", aar = "", aal = "";
  String tspr = "", tspl = "", tcyr = "", tcyl = "", tar = "", tal = "";
  String cspr = "", cspl = "", ccyr = "", ccyl = "", car = "", cal = "";
  String conr = "", conl = "";

  double sphr,
      sphl,
      cyll,
      cylr,
      axl,
      h,
      axr,
      F,
      cylcr = 0,
      sphcr = 0,
      cylcl = 0,
      sphcl = 0;
  double d = 0;

  Widget getPage(int index) {
    switch (index) {
      case 0:
        return lensthick(data: widget.data);
        break;
      case 1:
        return trans(data: widget.data);
        break;
      case 2:
        return add(data: widget.data);
        break;
      case 3:
        return cont(data: widget.data);
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
    if (index == 1) {
      if (((widget.data['cylr'] == "") || (widget.data['axr'] == "")) &&
          ((widget.data['cyll'] == "") || (widget.data['axl'] == ""))) {
        alertDilog(context, "please Enter Cylinder and Axis");
      } else {
        tran();
        print(widget.data['tspl']);
      }
    } else if (index == 2) {
      if (widget.data['adicon'] == "") {
        alertDilog(context, "Please Enter the Addition");
      } else {
        Add();
      }
    } else if (index == 3) {
      Cont();
    }
  }

// End My new Code

  String title(int index) {
    String address;
    setState(() {
      switch (index) {
        case 0:
          return address = "Lens Thickness";
          break;
        case 1:
          return address = "Transposition";
          break;
        case 2:
          return address = "Reading";
          break;
        case 3:
          return address = "Contact Lenses";
          break;
        default:
          return address = "Lens Thickness";
          break;
      }
    });
    return address;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.blue, // Navigation bar
          statusBarColor: Color.fromRGBO(28, 105, 163, 100), // Status bar
        ),
        title: Text(title(_currentIndex)),
      ),
      body: getPage(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.lens_outlined),
            backgroundColor: Colors.blue,
            label: 'LensThick',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_transit),
            backgroundColor: Colors.blue,
            label: 'Transposition',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            backgroundColor: Colors.blue,
            label: 'Reading',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.remove_red_eye),
            backgroundColor: Colors.blue,
            label: 'Contact Lens',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,
        onTap: onTabTapped,
      ),
    );
  }

  // Addition

  void Add() {
    spl = widget.data['sphl'];
    cyl = widget.data['cyll'];
    al = widget.data['axl'];
    spr = widget.data['sphr'];
    cyr = widget.data['cylr'];
    ar = widget.data['axr'];
    double add = 0;
    if (widget.data['adicon'] != "") add = double.parse(widget.data['adicon']);
    if (widget.data['sphl'] == "") {
      // Add Right
      widget.data['aspr'] = plusSign((double.parse(spr) + add).toString());
      widget.data['acyr'] = cyr;
      widget.data['aar'] = ar;
    } else if (widget.data['sphr'] == "") {
      // Add Left
      widget.data['aspl'] = plusSign((double.parse(spl) + add).toString());
      widget.data['acyl'] = cyl;
      widget.data['aal'] = al;
    } else if ((widget.data['adicon'] != "") &&
        (widget.data['sphr'] != "") &&
        (widget.data['sphl'] != "")) {
      // Add Both
      widget.data['aspr'] = plusSign((double.parse(spr) + add).toString());
      widget.data['acyl'] = cyl;
      widget.data['aal'] = al;

      widget.data['aspl'] = plusSign((double.parse(spl) + add).toString());
      widget.data['acyr'] = cyr;
      widget.data['aar'] = ar;
    }

    widget.data['tspl'] = plusSign((double.parse(spl) + add).toString());
    widget.data['tcyl'] = plusSign(cyll.toString());
  }

  // Transpostition

  void right() {
    spr = widget.data['sphr'];
    cyr = widget.data['cylr'];
    ar = widget.data['axr'];
    sphr = double.parse(spr);
    cylr = double.parse(cyr);
    axr = double.parse(ar);

    sphr += cylr;
    cylr *= -1;
    if (axr > 90)
      axr -= 90; // Calculating Axis of the Transpostion in Right Eye
    else if (axr <= 90) axr += 90;

    widget.data['tspr'] = plusSign(sphr.toString());
    widget.data['tcyr'] = plusSign(cylr.toString());
    widget.data['tar'] = axr.toStringAsFixed(0);
  }

  void left() {
    spl = widget.data['sphl'];
    cyl = widget.data['cyll'];
    al = widget.data['axl'];
    sphl = double.parse(spl);
    cyll = double.parse(cyl);
    axl = double.parse(al);

    sphl = sphl + cyll;
    cyll *= -1;
    if (axl > 90)
      axl -= 90; // Calculating Axis of the Transpostion in Left Eye
    else if (axl <= 90) axl += 90;

    widget.data['tspl'] = plusSign(sphl.toString());
    widget.data['tcyl'] = plusSign(cyll.toString());
    widget.data['tal'] = axl.toStringAsFixed(0);
  }

  void tran() {
    if (widget.data['sphl'] == "") {
      right();
    } else if (widget.data['sphr'] == "") {
      left();
    } else if ((widget.data['sphr'] != "") && (widget.data['sphl'] != "")) {
      right();
      left();
    }
  }

  // Contact Lens

  void cshr() {
    if (widget.data['bvd'] == "")
      bv = "12";
    else
      bv = widget.data['bvd'];

    double bvd = double.parse(bv);
    bvd *= 1 / 1000;
    sphcr = double.parse(spr);
    sphcr = sphcr / (1 - (bvd * sphcr));
    int x = sphcr.toInt();

    double n = sphcr - x;
    n = double.parse(n.toStringAsFixed(2));
    if (n < 0) {
      n *= -1;
    }
    double e = x.toDouble();
    if (e < 0) {
      e *= -1;
    }
    if ((n > 0.12) && (n < 0.25)) {
      e += 0.25;
    } else if ((n < 0.36) && (n > 0.25)) {
      e += 0.25;
    } else if ((n > 0.36) && (n < 0.50)) {
      e += 0.50;
    } else if ((n < 0.62) && (n > 0.50)) {
      e += 0.50;
    } else if ((n > 0.62) && (n < 0.75)) {
      e += 0.75;
    } else if ((n < 0.87) && (n > 0.75)) {
      e += 0.75;
    } else if (n > 0.87) {
      e += 1.00;
    } else {
      cspr = e.toString();
    }

    if (sphcr > 0) {
      cspr = e.toString();
    } else {
      e *= -1;
      cspr = e.toString();
    }
    sphcr = e;
    widget.data['cspr'] = plusSign(cspr);
  }

  void cclr() {
    if (widget.data['bvd'] == "")
      bv = "12";
    else
      bv = widget.data['bvd'];

    double bvd = double.parse(bv);
    bvd *= 1 / 1000;
    cylcr = double.parse(cyr);
    cylcr = cylcr / (1 - (bvd * cylcr));
    int x = cylcr.toInt();

    double n = cylcr - x;
    n = double.parse(n.toStringAsFixed(2));
    if (n < 0) {
      n *= -1;
    }
    double e = x.toDouble();
    if (e < 0) {
      e *= -1;
    }
    if ((n > 0.12) && (n < 0.25)) {
      e += 0.25;
    } else if ((n < 0.36) && (n > 0.25)) {
      e += 0.25;
    } else if ((n > 0.36) && (n < 0.50)) {
      e += 0.50;
    } else if ((n < 0.62) && (n > 0.50)) {
      e += 0.50;
    } else if ((n > 0.62) && (n < 0.75)) {
      e += 0.75;
    } else if ((n < 0.87) && (n > 0.75)) {
      e += 0.75;
    } else if (n > 0.87) {
      e += 1.00;
    } else {
      ccyr = e.toString();
    }

    if (cylcr > 0) {
      ccyr = e.toString();
    } else {
      e *= -1;
      ccyr = e.toString();
    }
    cylcr = e;
    widget.data['ccyr'] = plusSign(ccyr);
  }

  void RightC() {
    spr = widget.data['sphr'];
    cyr = widget.data['cylr'];
    ar = widget.data['axr'];
    widget.data['car'] = ar;

    if (cyr == "") {
      cshr();
    } else {
      cshr();
      cclr();
    }

    F = sphcr + (cylcr / 2);

    int x = F.toInt();

    double n = F - x;
    n = double.parse(n.toStringAsFixed(2));
    if (n < 0) {
      n *= -1;
    }
    double e = x.toDouble();
    if (e < 0) {
      e *= -1;
    }
    if ((n > 0.12) && (n <= 0.25)) {
      e += 0.25;
    } else if ((n <= 0.36) && (n > 0.25)) {
      e += 0.25;
    } else if ((n > 0.36) && (n <= 0.50)) {
      e += 0.50;
    } else if ((n <= 0.62) && (n > 0.50)) {
      e += 0.50;
    } else if ((n > 0.62) && (n <= 0.75)) {
      e += 0.75;
    } else if ((n <= 0.87) && (n > 0.75)) {
      e += 0.75;
    } else if (n > 0.87) {
      e += 1.00;
    } else {
      conr = e.toString();
    }

    if (F > 0) {
      conr = e.toString();
    } else {
      e *= -1;
      conr = e.toString();
    }
    widget.data['conr'] = plusSign(conr);
  }

  void cshl() {
    if (widget.data['bvd'] == "")
      bv = "12";
    else
      bv = widget.data['bvd'];

    double bvd = double.parse(bv);
    bvd *= 1 / 1000;
    sphcl = double.parse(spl);
    sphcl = sphcl / (1 - (bvd * sphcl));
    int x = sphcl.toInt();

    double n = sphcl - x;
    n = double.parse(n.toStringAsFixed(2));
    if (n < 0) {
      n *= -1;
    }
    double e = x.toDouble();
    if (e < 0) {
      e *= -1;
    }
    if ((n > 0.12) && (n < 0.25)) {
      e += 0.25;
    } else if ((n < 0.36) && (n > 0.25)) {
      e += 0.25;
    } else if ((n > 0.36) && (n < 0.50)) {
      e += 0.50;
    } else if ((n < 0.62) && (n > 0.50)) {
      e += 0.50;
    } else if ((n > 0.62) && (n < 0.75)) {
      e += 0.75;
    } else if ((n < 0.87) && (n > 0.75)) {
      e += 0.75;
    } else if (n > 0.87) {
      e += 1.00;
    } else {
      cspl = e.toString();
    }

    if (sphcl > 0) {
      cspl = e.toString();
    } else {
      e *= -1;
      cspl = e.toString();
    }
    sphcr = e;
    widget.data['cspl'] = plusSign(cspl);
  }

  void ccll() {
    if (widget.data['bvd'] == "")
      bv = "12";
    else
      bv = widget.data['bvd'];

    double bvd = double.parse(bv);
    bvd *= 1 / 1000;
    cylcl = double.parse(cyl);
    cylcl = cylcl / (1 - (bvd * cylcl));
    int x = cylcl.toInt();

    double n = cylcl - x;
    n = double.parse(n.toStringAsFixed(2));
    if (n < 0) {
      n *= -1;
    }
    double e = x.toDouble();
    if (e < 0) {
      e *= -1;
    }
    if ((n > 0.12) && (n < 0.25)) {
      e += 0.25;
    } else if ((n < 0.36) && (n > 0.25)) {
      e += 0.25;
    } else if ((n > 0.36) && (n < 0.50)) {
      e += 0.50;
    } else if ((n < 0.62) && (n > 0.50)) {
      e += 0.50;
    } else if ((n > 0.62) && (n < 0.75)) {
      e += 0.75;
    } else if ((n < 0.87) && (n > 0.75)) {
      e += 0.75;
    } else if (n > 0.87) {
      e += 1.00;
    } else {
      ccyl = e.toString();
    }

    if (cylcl > 0) {
      ccyl = e.toString();
    } else {
      e *= -1;
      ccyl = e.toString();
    }
    cylcl = e;
    widget.data['ccyl'] = plusSign(ccyl);
  }

  void LeftC() {
    spl = widget.data['sphl'];
    cyl = widget.data['cyll'];
    al = widget.data['axl'];
    widget.data['cal'] = al;

    if (cyl == "") {
      cshl();
    } else {
      cshl();
      ccll();
    }

    F = sphcl + (cylcl / 2);

    int x = F.toInt();

    double n = F - x;
    n = double.parse(n.toStringAsFixed(2));
    if (n < 0) {
      n *= -1;
    }
    double e = x.toDouble();
    if (e < 0) {
      e *= -1;
    }
    if ((n > 0.12) && (n <= 0.25)) {
      e += 0.25;
    } else if ((n <= 0.36) && (n > 0.25)) {
      e += 0.25;
    } else if ((n > 0.36) && (n <= 0.50)) {
      e += 0.50;
    } else if ((n <= 0.62) && (n > 0.50)) {
      e += 0.50;
    } else if ((n > 0.62) && (n <= 0.75)) {
      e += 0.75;
    } else if ((n <= 0.87) && (n > 0.75)) {
      e += 0.75;
    } else if (n > 0.87) {
      e += 1.00;
    } else {
      conl = e.toString();
    }

    if (F > 0) {
      conl = e.toString();
    } else {
      e *= -1;
      conl = e.toString();
    }
    widget.data['conl'] = plusSign(conl);
  }

  void Cont() {
    if ((widget.data['sphl'] == "") && (widget.data['cyll'] == "")) {
      RightC();
    } else if ((widget.data['sphr'] == "") && (widget.data['cylr'] == "")) {
      LeftC();
    } else {
      LeftC();
      RightC();
    }
  }

  // tool

  String plusSign(String t) {
    String x = t;
    if (x != "") {
      double mx = double.parse(x);
      x = mx.toStringAsFixed(2);
      String y = x[0];
      if (!(y == '-') && !(y == '+')) {
        x = "+" + x;
      }
    }
    return x;
  }
}
