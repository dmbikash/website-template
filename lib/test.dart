// import 'package:flutter/material.dart';
//
// class Home extends StatefulWidget {
//   const Home({super.key});
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//
//   final _middleContentWidgetKey = GlobalKey<_MiddleContentWidgetState>();
//
//   @override
//   Widget build(BuildContext context) {
//
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;
//
//     return Scaffold(
//       appBar: AppBar(),
//       body: Container(
//         width: w,
//         height: h,
//         color: Colors.greenAccent,
//         child: Row(
//           children: [
//             Expanded(
//               flex: 2,
//               child: Container(
//                 color: Colors.red,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: ElevatedButton(
//                           onPressed: (){
//                             setState(() {
//                               onMenuItemSelected(_middleContentWidgetKey);
//                             });
//                           },
//                           child: Text("ALU")
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: ElevatedButton(
//                           onPressed: (){},
//                           child: Text("B")
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: ElevatedButton(
//                           onPressed: (){},
//                           child: Text("C")
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 4,
//               child: MiddleContentWidget(),
//             ),
//             Expanded(
//               flex: 2,
//               child: Container(
//                 color: Colors.yellow,
//               ),
//             ),
//           ],
//         ),
//
//       ),
//     );
//   }
//
//
//   void onMenuItemSelected(var _middleContentWidgetKey) {
//
//     Widget midWidget = ALU(); // Your PageOneWidget instance
//     _middleContentWidgetKey.currentState!.changeContent(midWidget);
//   }
//
// }
//
//
//
// class MiddleContentWidget extends StatefulWidget {
//   @override
//   _MiddleContentWidgetState createState() => _MiddleContentWidgetState();
// }
//
// class _MiddleContentWidgetState extends State<MiddleContentWidget> {
//   Widget _currentContent = Container(color: Colors.orange,); // Default content, can be replaced later
//
//   void changeContent(Widget content) {
//     setState(() {
//       _currentContent = content;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return _currentContent;
//   }
// }
//
//
//
//
// class ALU extends StatefulWidget {
//   const ALU({super.key});
//
//   @override
//   State<ALU> createState() => _ALUState();
// }
//
// class _ALUState extends State<ALU> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           Text("ALU"),
//           //Image.network("https://www.discovery.org/m/2021/09/potato-head-1600x1067.jpg",width: 200,height: 100,),
//         ],
//       ),
//
//     );
//   }
// }
//
//
