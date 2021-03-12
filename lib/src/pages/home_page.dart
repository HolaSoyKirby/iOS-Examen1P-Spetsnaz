import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CountPage extends StatefulWidget {
  @override
  createState() {
    return CountPageState();
  }
}

class CountPageState extends State<CountPage> {
  final _style = new TextStyle(fontSize: 30, color: Colors.blue);
  final _style2 = new TextStyle(fontSize: 20, color: Colors.black38);

  int _x = 1, _y = 1;
  String _instructions = "";
  int _cas1 = 50,
      _cas2 = 50,
      _cas3 = 50,
      _cas4 = 50,
      _cas5 = 600,
      _cas6 = 50,
      _cas7 = 50,
      _cas8 = 50,
      _cas9 = 50;

  void evaluar() {
    _instructions = "";
    if (_y > 2) {
      _instructions = "Te has salido del límite superior, ";
    } else if (_y < 0) {
      _instructions = "Te has salido del límite inferior, ";
    } else if (_x > 2) {
      _instructions = "Te has salido del límite derecho, ";
    } else if (_x < 0) {
      _instructions = "Te has salido del límite izquierdo, ";
    }

    setState(() {
      _instructions += "x: $_x, y: $_y";

      _cas1 = 50;
      _cas2 = 50;
      _cas3 = 50;
      _cas4 = 50;
      _cas5 = 50;
      _cas6 = 50;
      _cas7 = 50;
      _cas8 = 50;
      _cas9 = 50;

      if (_x == 0 && _y == 2) {
        _cas1 = 600;
      } else if (_x == 1 && _y == 2) {
        _cas2 = 600;
      } else if (_x == 2 && _y == 2) {
        _cas3 = 600;
      } else if (_x == 0 && _y == 1) {
        _cas4 = 600;
      } else if (_x == 1 && _y == 1) {
        _cas5 = 600;
      } else if (_x == 2 && _y == 1) {
        _cas6 = 600;
      } else if (_x == 0 && _y == 0) {
        _cas7 = 600;
      } else if (_x == 1 && _y == 0) {
        _cas8 = 600;
      } else if (_x == 2 && _y == 0) {
        _cas9 = 600;
      }
    });
  }

  move(dir) {
    switch (dir) {
      case 1:
        _y++;
        break;
      case 2:
        _x++;
        break;
      case 3:
        _y--;
        break;
      default:
        _x--;
    }
    evaluar();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('iOS_ExamenP1_Spetsnaz'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            (Text('GRID', style: _style)),
            (Text('$_instructions', style: _style2)),
            (Flexible(
              child: GridView.count(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 0),
                crossAxisCount: 3,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                children: <Widget>[
                  Container(
                    color: Colors.green[_cas1],
                    width: 20,
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[_cas2],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[_cas3],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[_cas4],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[_cas5],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                                       color: Colors.green[_cas6],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                                       color: Colors.green[_cas7],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                                       color: Colors.green[_cas8],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                                       color: Colors.green[_cas9],
                  ),
                ],
              ),
            )),
            (Expanded(
              child: GridView.count(
                padding: EdgeInsets.only(left: 70, right: 70, bottom: 0),
                crossAxisCount: 3,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                  ),
                  FlatButton(
                      color: Color.fromARGB(255, 200, 200, 200),
                      onPressed: () => move(1),
                      child: Text('Arriba')),
                  Container(
                    padding: const EdgeInsets.all(8),
                  ),
                  FlatButton(
                      color: Color.fromARGB(255, 200, 200, 200),
                      onPressed: () => move(4),
                      child: Text('Izq.')),
                  Container(
                    padding: const EdgeInsets.all(8),
                  ),
                  FlatButton(
                      color: Color.fromARGB(255, 200, 200, 200),
                      onPressed: () => move(2),
                      child: Text('Derecha')),
                  Container(
                    padding: const EdgeInsets.all(8),
                  ),
                  FlatButton(
                      color: Color.fromARGB(255, 200, 200, 200),
                      onPressed: () => move(3),
                      child: Text('Abajo')),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
