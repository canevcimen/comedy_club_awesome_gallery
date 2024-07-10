import 'package:flutter/material.dart';

class DragonSlider extends StatefulWidget {
  @override
  _DragonSliderState createState() => _DragonSliderState();
}

class _DragonSliderState extends State<DragonSlider> {
  double _sliderValue = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dragon Slayer Slider'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                _sliderValue <= 50 ? 'images/greendragon.png' : 'images/reddragon.png',
                height: 300,
                width: 300,
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.red,
                  inactiveTrackColor: Colors.green,
                  thumbColor: Colors.blue,
                  trackShape: GradientRectSliderTrackShape(),
                ),
                child: Slider(
                  value: _sliderValue,
                  min: 0,
                  max: 100,
                  divisions: 100,
                  onChanged: (value) {
                    setState(() {
                      _sliderValue = value;
                    });
                  },
                ),
              ),
              Text(
                'Current Value: ${_sliderValue.toInt()}',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GradientRectSliderTrackShape extends SliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight ?? 2.0;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }

  @override
  void paint(
      PaintingContext context,
      Offset offset, {
        required RenderBox parentBox,
        required SliderThemeData sliderTheme,
        required Animation<double> enableAnimation,
        Offset? thumbCenter,
        bool isEnabled = false,
        bool isDiscrete = false,
        required TextDirection textDirection,
        Offset? secondaryOffset,
      }) {
    if (sliderTheme.trackHeight == null || sliderTheme.activeTrackColor == null || sliderTheme.inactiveTrackColor == null) {
      return;
    }

    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );

    final Paint activePaint = Paint()
      ..shader = LinearGradient(
        colors: <Color>[
          sliderTheme.inactiveTrackColor!,
          sliderTheme.activeTrackColor!,
        ],
      ).createShader(trackRect);

    context.canvas.drawRect(trackRect, activePaint);
  }
}