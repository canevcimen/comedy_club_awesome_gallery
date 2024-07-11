import 'package:flutter/material.dart';

class PageControlExample extends StatefulWidget {
  const PageControlExample({super.key});

  @override
  State<PageControlExample> createState() => _PageControlExampleState();
}

class _PageControlExampleState extends State<PageControlExample> {
  PageController _pageController = PageController();
  List<Color> _pageColor = [Colors.blue, Colors.yellow, Colors.greenAccent];
  List<String> _title = ["BKM", "Macbook Pro", "Green Dragon"];
  List<String> _subtitle = ["Pazar 20.00", "60.000 TL", "Dangerous"];
  List<String> _images = [
    "images/bkm.png",
    "images/macbook22.png",
    "images/greendragon.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView Screen"),
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: _title.length,
        itemBuilder: (context, index) {

          return Container(
            color: _pageColor[index],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(_title[index],style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                  Text(_subtitle[index],style: TextStyle(fontSize: 18.0,fontStyle: FontStyle.italic),),
                  SizedBox(height: 20.0,),

                    Image.asset(_images[index],),

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
