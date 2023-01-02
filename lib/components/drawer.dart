// import 'package:flutter/material.dart';
// import 'package:sep7a_app/screens/welcome_screen.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class MyListTiles extends StatelessWidget {
//   const MyListTiles({super.key, required this.onTap1,required this.onTap2});
//
//   final Function()? onTap1;
//   final Function()? onTap2;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(color: Colors.blue),
//               child: Center(
//                 child: Text(
//                   'Sep7a',
//                   style: TextStyle(color: Colors.white, fontSize: 32.0),
//                 ),
//               ),
//             ),
//             ListTile(
//               title: const Text('Reset my counter'),
//               onTap: onTap1,
//             ),
//             ListTile(
//               title: const Text('Log out'),
//               onTap: onTap2,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//



// drawer: Drawer(
//   child: ListView(
//     padding: EdgeInsets.zero,
//     children: [
//       const DrawerHeader(
//         decoration: BoxDecoration(color: Colors.blue),
//         child: Center(
//           child: Text(
//             'Sep7a',
//             style: TextStyle(color: Colors.white, fontSize: 32.0),
//           ),
//         ),
//       ),
//       ListTile(
//         title: const Text('Reset my counter'),
//         onTap: resetCounter,
//       ),
//       ListTile(
//         title: const Text('Log out'),
//         onTap: () async {
//           Navigator.of(context).popUntil((route) => route.isFirst);
//           Navigator.pushNamed(context, WelcomeScreen.id);
//           SharedPreferences pref = await SharedPreferences.getInstance();
//           await pref.clear();
//         },
//       ),
//     ],
//   ),
// ),