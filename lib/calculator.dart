import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class Calculator extends StatelessWidget {
  CalculatorController controller = Get.put(CalculatorController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CalculatorController>(
      init: CalculatorController(),
      builder: (controller) => Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          brightness: Brightness.dark,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, right: 28, bottom: 10),
                    child: Text(
                      controller.text,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 70,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    onPressed: () {
                      controller.calculation('AC');
                    },
                    child: Text(
                      'AC',
                      style: TextStyle(fontSize: 35, color: Colors.black),
                    ),
                    shape: CircleBorder(),
                    color: Colors.grey,
                    padding: EdgeInsets.all(20),
                  ),
                  RaisedButton(
                    onPressed: () {
                      controller.calculation('+/-');
                    },
                    child: Text(
                      '+/-',
                      style: TextStyle(fontSize: 35, color: Colors.black),
                    ),
                    shape: CircleBorder(),
                    color: Colors.grey,
                    padding: EdgeInsets.all(20),
                  ),
                  RaisedButton(
                    onPressed: () {
                      controller.calculation('%');
                    },
                    child: Text(
                      '%',
                      style: TextStyle(fontSize: 35, color: Colors.black),
                    ),
                    shape: CircleBorder(),
                    color: Colors.grey,
                    padding: EdgeInsets.all(20),
                  ),
                  RaisedButton(
                    onPressed: () {
                      controller.calculation('÷');
                    },
                    child: Text(
                      '÷',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                    shape: CircleBorder(),
                    color: Colors.amber[700],
                    padding: EdgeInsets.all(20),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    onPressed: () {
                      controller.calculation('7');
                    },
                    child: Text(
                      '7',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                    shape: CircleBorder(),
                    color: Colors.grey[850],
                    padding: EdgeInsets.all(20),
                  ),
                  RaisedButton(
                    onPressed: () {
                      controller.calculation('8');
                    },
                    child: Text(
                      '8',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                    shape: CircleBorder(),
                    color: Colors.grey[850],
                    padding: EdgeInsets.all(20),
                  ),
                  RaisedButton(
                    onPressed: () {
                      controller.calculation('9');
                    },
                    child: Text(
                      '9',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                    shape: CircleBorder(),
                    color: Colors.grey[850],
                    padding: EdgeInsets.all(20),
                  ),
                  RaisedButton(
                    onPressed: () {
                      controller.calculation('×');
                    },
                    child: Text(
                      '×',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                    shape: CircleBorder(),
                    color: Colors.amber[700],
                    padding: EdgeInsets.all(20),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    onPressed: () {
                      controller.calculation('4');
                    },
                    child: Text(
                      '4',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                    shape: CircleBorder(),
                    color: Colors.grey[850],
                    padding: EdgeInsets.all(20),
                  ),
                  RaisedButton(
                    onPressed: () {
                      controller.calculation('5');
                    },
                    child: Text(
                      '5',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                    shape: CircleBorder(),
                    color: Colors.grey[850],
                    padding: EdgeInsets.all(20),
                  ),
                  RaisedButton(
                    onPressed: () {
                      controller.calculation('6');
                    },
                    child: Text(
                      '6',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                    shape: CircleBorder(),
                    color: Colors.grey[850],
                    padding: EdgeInsets.all(20),
                  ),
                  RaisedButton(
                    onPressed: () {
                      controller.calculation('-');
                    },
                    child: Text(
                      '−',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                    shape: CircleBorder(),
                    color: Colors.amber[700],
                    padding: EdgeInsets.all(20),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    onPressed: () {
                      controller.calculation('1');
                    },
                    child: Text(
                      '1',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                    shape: CircleBorder(),
                    color: Colors.grey[850],
                    padding: EdgeInsets.all(20),
                  ),
                  RaisedButton(
                    onPressed: () {
                      controller.calculation('2');
                    },
                    child: Text(
                      '2',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                    shape: CircleBorder(),
                    color: Colors.grey[850],
                    padding: EdgeInsets.all(20),
                  ),
                  RaisedButton(
                    onPressed: () {
                      controller.calculation('3');
                    },
                    child: Text(
                      '3',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                    shape: CircleBorder(),
                    color: Colors.grey[850],
                    padding: EdgeInsets.all(20),
                  ),
                  RaisedButton(
                    onPressed: () {
                      controller.calculation('+');
                    },
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                    shape: CircleBorder(),
                    color: Colors.amber[700],
                    padding: EdgeInsets.all(20),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    padding: EdgeInsets.fromLTRB(40, 20, 120, 20),
                    onPressed: () {
                      controller.calculation('0');
                    },
                    child: Text(
                      '0',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                    shape: StadiumBorder(),
                    color: Colors.grey[850],
                  ),
                  RaisedButton(
                    onPressed: () {
                      controller.calculation('.');
                    },
                    child: Text(
                      '.',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                    shape: CircleBorder(),
                    color: Colors.grey[850],
                    padding: EdgeInsets.all(20),
                  ),
                  RaisedButton(
                    onPressed: () {
                      controller.calculation('=');
                    },
                    child: Text(
                      '=',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                    shape: CircleBorder(),
                    color: Colors.amber[700],
                    padding: EdgeInsets.all(20),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
