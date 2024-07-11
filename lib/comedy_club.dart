import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:neon_academy/widgets/card_time_widget.dart';

class CodemyClub extends StatefulWidget {
  const CodemyClub({super.key});

  @override
  State<CodemyClub> createState() => _CodemyClubState();
}

class _CodemyClubState extends State<CodemyClub> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Comedy Club",style: TextStyle(fontSize: 24.0),),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[Text("Welcome to the Comedy Club!",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),),
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    border: Border.all(
                      color: Colors.red,
                      width: 5.0,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image(image: AssetImage("images/bkm.png"),),
                ),
                SizedBox(height: 20.0,),

                Text("Upcoming Shows: ",style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.w600),),

                CardTime("Comedy Night With Cem Yılmaz","July 15,2024 \n 8:00 PM "),

                CardTime("Talk Show Ata Demirer", "July 27,2024 \n 8:00 PM"),

                SizedBox(height: 20.0,),

                Text("Ticket Information : ",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w600),),

                SizedBox(height: 10.0,),
                Text("Tickets are available at the box office or online.Prices vary depending on the show. ",style:TextStyle(fontSize: 18.0),),

                SizedBox(height: 15.0,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    SizedBox( width: size.width*0.9,
                     child: ElevatedButton(onPressed: (){

                     }, child: Text("Ticket",style: TextStyle(fontSize: 20.0),),style: ButtonStyle(),),
                    )

                  ]

                ),


                SizedBox(height: 20.0,),

                Text("Galery : ",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w600),),

                CarouselSlider(items:
                [
                  Image(image: AssetImage("images/bkm.png"),),
                  Image(image: AssetImage("images/bkm2.png"),),
                  Image(image: AssetImage("images/bkm3.png"),),
                ], options: CarouselOptions(
                  aspectRatio: 2/1,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  autoPlayCurve: Curves.easeIn,
                  autoPlayAnimationDuration: Duration(milliseconds: 500),
                  autoPlayInterval: Duration(seconds: 3),
                ),),
              ],

            ),
          ],
        ),
      ),
    );
  }
}



