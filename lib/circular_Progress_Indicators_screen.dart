import 'package:flutter/material.dart';

class CircularProgressIndicatorsScreen extends StatefulWidget {
  const CircularProgressIndicatorsScreen({super.key});

  @override
  State<CircularProgressIndicatorsScreen> createState() => _CircularProgressIndicatorsScreenState();
}

class _CircularProgressIndicatorsScreenState extends State<CircularProgressIndicatorsScreen> {

  bool _isLoading=false;
  int _counter = 0;
  Color _indicatorColor = Colors.blue;


  void _startCounting() async
  {
    setState(() {
      _isLoading = true;
      _counter=0;
    });

    for (int i = 0; i <= 100; i++) {
      await Future.delayed(Duration(milliseconds: 100));
      setState(() {
        _counter = i;
        if (_counter % 10 == 0) {
          _indicatorColor = _getRandomColor();
        }
      });
    }

    setState(() {
      _isLoading = false;
    });
  }

  Color _getRandomColor()
  {
    return Color((0xFF000000 + (0x00FFFFFF * (0.1 + (0.9 * _counter / 100))).toInt())).withOpacity(1.0);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Circular Progress Indicators"),),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _isLoading ?
                Column(
                  children: <Widget>[
                    CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(_indicatorColor),
                    ),
                    SizedBox(height: 15.0,),
                    Text(('$_counter'),),

                  ],
                )
                :ElevatedButton(onPressed: _startCounting, child: Text("Start Counting",),style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.yellow)),),

          ],
        ),
      ),
    );
  }
}
