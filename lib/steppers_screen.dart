import 'package:flutter/material.dart';


class SteppersScreen extends StatefulWidget {
  @override
  _StepperWidgetState createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<SteppersScreen> {
  int _currentValue = 0;
  final int _minValue = 0;
  final int _maxValue = 50;
  final int _stepValue = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink, // Background color of the stepper
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Container(
          //   color: Colors.white, // Divider color
          //   width: double.infinity,
          //   height: 4.0,
          //   margin: EdgeInsets.symmetric(vertical: 20.0),
          // ),
          Text(
            'Value: $_currentValue',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                color: Colors.white,
                icon: Icon(Icons.heart_broken_rounded),
                onPressed: _currentValue > _minValue
                    ? () {
                  setState(() {
                    _currentValue -= _stepValue;
                  });
                }
                    : null,
              ),
              SizedBox(width: 20),
              IconButton(
                color: Colors.white,
                icon: Icon(Icons.favorite),
                onPressed: _currentValue < _maxValue
                    ? () {
                  setState(() {
                    _currentValue += _stepValue;
                  });
                }
                    : null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
