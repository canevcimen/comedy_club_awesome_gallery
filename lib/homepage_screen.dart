// import 'package:flutter/material.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "FutureTech",
//           style: TextStyle(color: Colors.orange, fontSize: 40.0),
//         ),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               "Welcome to FutureTech",
//               style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(
//               height: 20.0,
//             ),
//             Text("Today's Date: ${DateTime.now().toLocal().toShortDateString()}"),
//             SizedBox(
//               height: 25.0,
//             ),
//             Text(
//               "Connected Devices",
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             DeviceCard(
//               image: "images/iphone11.png",
//               title: "Can's Phone ",
//               status: 'On',
//             ),
//             DeviceCard(image: "images/macbook22.png", title: "Can's Macbook", status: "Off")
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// extension DateTimeExtension on DateTime {
//   String toShortDateString() {
//     return '${this.day}/${this.month}/${this.year}';
//   }
// }
//
// class DeviceCard extends StatefulWidget {
//   final String image;
//   final String title;
//   final String status;
//
//   DeviceCard({
//     required this.image,
//     required this.title,
//     required this.status,
//   });
//
//   @override
//   State<DeviceCard> createState() => _DeviceCardState();
// }
//
// class _DeviceCardState extends State<DeviceCard> {
//   late String status;
//
//   @override
//   void initState() {
//     super.initState();
//     status = widget.status;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       elevation: 5,
//       margin: EdgeInsets.symmetric(vertical: 10),
//       child: Padding(
//         padding: EdgeInsets.all(8),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Image(image: AssetImage(widget.image),height: 80.0,),
//            //Image(image:AssetImage("images/iphone11.png"),height: 80,),
//             Spacer(),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   widget.title,
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   'Status: $status',
//                   style: TextStyle(
//                       fontSize: 14,
//                       color: status == 'On' ? Colors.green : Colors.red),
//                 ),
//               ],
//             ),
//             Spacer(),
//             TextButton(
//               onPressed: () {
//                 setState(() {
//                   status = status == 'On' ? 'Off' : 'On';
//                 });
//               },
//               child: Text(
//                 "$status",
//                 style: TextStyle(
//                     fontSize: 14,
//                     color: status == 'On' ? Colors.green : Colors.red),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
