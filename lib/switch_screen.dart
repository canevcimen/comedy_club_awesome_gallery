import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool _isSwitch = false;
   Color backgroundcolor =Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        title: Text("Aç-Kapa"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Switch(
                value: _isSwitch,
                onChanged: (bool value) {
                  setState(() {
                    _isSwitch=value;
                    backgroundcolor = _isSwitch ? Colors.green : Colors.red;
                  });
              
                },
                activeTrackColor: Colors.red,
                activeColor: Colors.black,
                inactiveTrackColor: Colors.green,
                inactiveThumbColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
