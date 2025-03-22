// import 'package:flutter/material.dart';  

// class Statistics extends StatelessWidget {  
//   const Statistics({super.key});  

//   @override  
//   Widget build(BuildContext context) {  
//     return Scaffold(  
//       appBar: AppBar(  
//         title: const Text('Statistics Chart'),  
//       ),  
//       body: Padding(  
//         padding: const EdgeInsets.all(16.0),  
//         child: BarChart(  
//           BarChartData(  
//             alignment: BarChartAlignment.spaceAround,  
//             maxY: 6,  
//             barTouchData: BarTouchData(enabled: false),  
//             titlesData: FlTitlesData(  
//               bottomTitles: AxisTitles(  
//                 sideTitles: SideTitles(showTitles: true, reservedSize: 38,   
//                   getTitlesWidget: (value, meta) {  
//                     switch (value.toInt()) {  
//                       case 0: return Text('A');  
//                       case 1: return Text('B');  
//                       case 2: return Text('C');  
//                       case 3: return Text('D');  
//                       case 4: return Text('E');  
//                       default: return Text('');  
//                     }  
//                   }),  
//               ),  
//               leftTitles: AxisTitles(  
//                 sideTitles: SideTitles(showTitles: true, reservedSize: 40,  
//                   getTitlesWidget: (value, meta) {  
//                     return Text(value.toInt().toString());  
//                   }),  
//               ),  
//             ),  
//             borderData: FlBorderData(show: false),  
//             barGroups: [  
//               BarChartGroupData(x: 0, barRods: [BarRodData(y: 5, color: Colors.blue)]),  
//               BarChartGroupData(x: 1, barRods: [BarRodData(y: 3, color: Colors.green)]),  
//               BarChartGroupData(x: 2, barRods: [BarRodData(y: 1, color: Colors.yellow)]),  
//               BarChartGroupData(x: 3, barRods: [BarRodData(y: 4, color: Colors.red)]),  
//               BarChartGroupData(x: 4, barRods: [BarRodData(y: 2, color: Colors.purple)]),  
//             ],  
//           ),  
//         ),  
//       ),  
//     );  
//   }  
// }  