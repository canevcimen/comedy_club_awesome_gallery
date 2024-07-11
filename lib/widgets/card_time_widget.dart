import 'package:flutter/material.dart';

class CardTime extends StatelessWidget {

  String title;
  String subtitle;


  CardTime(this.title,this.subtitle)
  {
    this.title;
    this.subtitle;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
      child: ListTile(
        leading: Icon(Icons.calendar_month),
        iconColor: Colors.blue,
        title: Text("$title",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w600),),
        subtitle: Text("$subtitle"),

      ),
    );
  }
}
