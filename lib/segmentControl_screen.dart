import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SegmentcontrolScreen extends StatefulWidget {

  @override
  State<SegmentcontrolScreen> createState() => _SegmentcontrolScreenState();
}

class _SegmentcontrolScreenState extends State<SegmentcontrolScreen> {
  int _selectedSegmentIndex = 0;

  final List<String> _segmentTitles = ["Neon Academy 2024", "Neon", "Apps"];

  final List<Color> _segmentColors = [
    Colors.yellow.shade900,
    Colors.blue.shade900,
    Colors.greenAccent.shade700
  ];

  double _getSegmentHeight() {
    switch (_selectedSegmentIndex) {
      case 0:
        return 100.0;
      case 1:
        return 80.0;
      case 2:
        return 60.0;
      default:
        return 60.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segmented Control"),
      ),
      body: Center(
        child: Container(
          height: _getSegmentHeight(),
          decoration: BoxDecoration(
            color: _segmentColors[_selectedSegmentIndex],
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(_segmentTitles.length, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedSegmentIndex = index;
                  });
                },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Text(
                    _segmentTitles[index],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: _selectedSegmentIndex == index ? 20.0 : 16.0,
                      fontWeight: _selectedSegmentIndex == index
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
