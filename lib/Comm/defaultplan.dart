// @dart = 2.9
import 'package:flutter/material.dart';

class plan extends StatelessWidget {
  String spr;
  String spl;
  String cyr;
  String cyl;
  String axr;
  String axl;
  plan({this.spl, this.spr, this.cyr, this.cyl, this.axr, this.axl});

  Widget RL() {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(" ",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 15,
          ),
          Text("Right",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 24,
          ),
          Text("Left",
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 176, 80),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget textf(String type, String r, String l) {
    return Container(
        child: Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Text(type,
            style: TextStyle(
                color: Colors.blue,
                fontSize: 20.0,
                fontWeight: FontWeight.bold)),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 40,
          width: 70,
          child: Center(
            child: Text(r,
                style: TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.center),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.blue,
              border: Border.all(
                color: Colors.blue,
                width: 3,
              )),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 40,
          width: 70,
          child: Center(
            child: Text(l,
                style: TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.center),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color.fromARGB(255, 0, 176, 80),
              border: Border.all(
                color: Color.fromARGB(255, 0, 176, 80),
                width: 3,
              )),
        )
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: <Widget>[
          RL(),
          SizedBox(width: 10),
          textf('SPH', spr, spl),
          SizedBox(width: 10),
          textf('CYL', cyr, cyl),
          SizedBox(width: 10),
          textf('Axis', axr, axl),
        ],
      ),
    );
  }
}

class plan2 extends StatelessWidget {
  String spr;
  String spl;
  String cyr;
  String cyl;
  String axr;
  String axl;
  plan2({this.spl, this.spr, this.cyr, this.cyl, this.axr, this.axl});

  Widget RL() {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(" ",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 15,
          ),
          Text("Right",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 24,
          ),
          Text("Left",
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 176, 80),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget textf(String type, String r, String l) {
    return Container(
        child: Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Text(type,
            style: TextStyle(
                color: Colors.blue,
                fontSize: 20.0,
                fontWeight: FontWeight.bold)),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          width: 90,
          child: Center(
            child: Text(r,
                style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.transparent,
              border: Border.all(
                color: Colors.black38,
                width: 2,
              )),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          width: 90,
          child: Center(
            child: Text(l,
                style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.transparent,
              border: Border.all(
                color: Colors.black38,
                width: 2,
              )),
        )
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: <Widget>[
          RL(),
          SizedBox(width: 10),
          textf('SPH', spr, spl),
          SizedBox(width: 10),
          textf('CYL', cyr, cyl),
          SizedBox(width: 10),
          textf('Axis', axr, axl),
        ],
      ),
    );
  }
}

class txtf extends StatelessWidget {
  String type;
  String r;
  String l;
  txtf({this.type, this.r, this.l});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          children: <Widget>[
            SizedBox(width: 10),
            Text(type,
                style: const TextStyle(
                    color: Color.fromARGB(255, 26, 113, 184),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(width: 35),
            Container(
              height: 40,
              width: 70,
              child: Center(
                child: Text(r,
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                    textAlign: TextAlign.center),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.blue,
                    width: 3,
                  )),
            ),
            SizedBox(width: 30),
            Container(
              height: 40,
              width: 70,
              child: Center(
                child: Text(l,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    textAlign: TextAlign.center),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color.fromARGB(255, 0, 176, 80),
                  border: Border.all(
                    color: Color.fromARGB(255, 0, 176, 80),
                    width: 3,
                  )),
            )
          ],
        ),
        SizedBox(height: 15)
      ],
    ));
  }
}

class contact extends StatelessWidget {
  String r, l;

  contact({this.r, this.l});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          children: <Widget>[
            SizedBox(
              width: 7,
            ),
            Text("Contact Lens",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 35,
              width: 70,
              child: Text(r,
                  style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(163, 231, 255, 1.0),
                  border: Border.all(
                    color: Colors.blue,
                    width: 3,
                  )),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 35,
              width: 70,
              child: Text(l,
                  style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(163, 231, 255, 1.0),
                  border: Border.all(
                    color: Colors.blue,
                    width: 3,
                  )),
            )
          ],
        ),
        SizedBox(
          height: 5,
        )
      ],
    ));
  }
}

class RL extends StatelessWidget {
  const RL({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(" ",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 7,
          ),
          Text("Right",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 33,
          ),
          Text("Left",
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 176, 80),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class rl extends StatelessWidget {
  const rl({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: const <Widget>[
      SizedBox(width: 90),
      Text('R',
          style: TextStyle(
              color: Colors.blue, fontSize: 20.0, fontWeight: FontWeight.bold)),
      SizedBox(width: 90),
      Text('L',
          style: TextStyle(
              color: Color.fromARGB(255, 0, 176, 80),
              fontSize: 20.0,
              fontWeight: FontWeight.bold)),
    ]));
  }
}

class plancont extends StatelessWidget {
  String spr;
  String spl;
  String cyr;
  String cyl;
  String axr;
  String axl;
  plancont({this.spl, this.spr, this.cyr, this.cyl, this.axr, this.axl});

  Widget RL() {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(" ",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 15,
          ),
          Text("Right",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 24,
          ),
          Text("Left",
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 176, 80),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget textf(String type, String r, String l) {
    return Container(
        child: Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Text(type,
            style: TextStyle(
                color: Colors.blue,
                fontSize: 20.0,
                fontWeight: FontWeight.bold)),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 40,
          width: 70,
          child: Center(
            child: Text(
              r,
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.blue,
              border: Border.all(
                color: Colors.blue,
                width: 3,
              )),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 40,
          width: 70,
          child: Center(
            child: Text(l,
                style: TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.center),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color.fromARGB(255, 0, 176, 80),
              border: Border.all(
                color: Color.fromARGB(255, 0, 176, 80),
                width: 3,
              )),
        )
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: <Widget>[
          RL(),
          SizedBox(width: 10),
          textf('SPH', spr, spl),
        ],
      ),
    );
  }
}
