// import 'package:flutter/material.dart';

// class ProgressCard extends StatelessWidget {
//   const ProgressCard({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(12.0),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               'Last read',
//               style: TextStyle(fontSize: 14, color: Colors.grey),
//             ),
//             const SizedBox(height: 8),
//             Row(
//               children: [
//                 const Expanded(
//                   child: Text(
//                     'Al-Baqorah',
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 Image.asset('assets/icons/quran.png', width: 50, height: 50),
//               ],
//             ),
//             const SizedBox(height: 8),
//             const LinearProgressIndicator(
//               value: 0.15,
//               backgroundColor: Colors.grey,
//               color: Colors.purple,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
