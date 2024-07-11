import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlertDialogScreen extends StatefulWidget {
  @override
  State<AlertDialogScreen> createState() => _AlertDialogScreenState();
}

class _AlertDialogScreenState extends State<AlertDialogScreen> {
  final TextEditingController _textFieldController = TextEditingController();

  void _showAlertDialog(BuildContext context, String title, String subtitle) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(subtitle),
          );
        });
  }

  void _showAlertWithOneButton(
      BuildContext context, String title, String subtitle, String butonTitle) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(subtitle),
            actions: [
              TextButton(
                onPressed: () {
                  print(butonTitle);
                  Navigator.of(context).pop();
                },
                child: Text(butonTitle),
              ),
            ],
          );
        });
  }

  void _showAlertWithTwoButton(BuildContext context, String title,
      String subtitle, String butonTitle, String butonTitle2) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(subtitle),
            actions: [
              TextButton(
                onPressed: () {
                  print(butonTitle);
                  Navigator.of(context).pop();
                },
                child: Text(butonTitle),
              ),
              TextButton(
                onPressed: () {
                  print(butonTitle2);
                  Navigator.of(context).pop();
                },
                child: Text(butonTitle2),
              ),
            ],
          );
        });
  }

  void _showAlertWithTextField(
      BuildContext context, String title, String subtitle) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: TextField(
              controller: _textFieldController,
              decoration: InputDecoration(hintText: subtitle),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  print(_textFieldController.text);
                  Navigator.of(context).pop();
                },
                child: Text("Submit"),
              ),
            ],
          );
        });
  }

  void _showActionSheet(BuildContext context)
  {
    showModalBottomSheet(context: context, builder: (BuildContext context){
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(title: Text("Option 1"),onTap:(){
            print("Option 1");
            Navigator.of(context).pop();

          },),
          ListTile(title: Text("Option 2"),onTap:(){
            print("Option 2");
            Navigator.of(context).pop();

          },),

        ],
      );
    });
  }
  void _showActivityIndicator(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Activity Indicator'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 20),
              Text('Loading...'),
            ],
          ),
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialogs"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: (){
              _showAlertDialog(context, "No Button", "This is alert with no button");
            }, child: Text('Show Alert With No Buttons'),),
            ElevatedButton(onPressed: (){
              _showAlertWithOneButton(context, "One Button", "This alert has one button", "Ok");
            }, child: Text("Show Alert With One Button")),
            ElevatedButton(onPressed: (){
              _showAlertWithTwoButton(context, "Two Button", "This alert has two buttons", "Cancal", "Ok");
            }, child: Text("Show Alert With One Button"),),
            ElevatedButton(onPressed: (){
              _showAlertWithTextField(context, "TextField", "This alert has textField");
            }, child: Text("Show Alert With textField"),),
            ElevatedButton(onPressed: (){
              _showActionSheet(context);
            }, child: Text("Show Action Sheet"),),
            ElevatedButton(onPressed: (){
              _showActivityIndicator(context);
            }, child: Text("Show Action Indicator"))
          ],
        ),
      ),
    );
  }
}
