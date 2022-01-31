// import 'package:flutter/material.dart';
// import 'package:khadok_application_8/ui/route.dart';

// class SingIn extends StatefulWidget {
//   @override
//   State<SingIn> createState() => _SingInState();
// }

// class _SingInState extends State<SingIn> {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   // FirebaseAuth auth = FirebaseAuth.instance;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//       RichText(
//         textAlign: TextAlign.center,
//         text: TextSpan(
//             text: 'Kh',
//             style: TextStyle(
//               fontSize: 30,
//               fontWeight: FontWeight.w700,
//               color: Colors.green,
//             ),
//             children: [
//               TextSpan(
//                 text: 'ad',
//                 style: TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.w700,
//                   color: Colors.black,
//                 ),
//               ),
//               TextSpan(
//                 text: 'ok',
//                 style: TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.w700,
//                   color: Colors.red,
//                 ),
//               ),
//             ]),
//       ),
//       Padding(
//         padding: EdgeInsets.all(10),
//         child: TextField(
//           controller: emailController,
//           obscureText: false,
//           decoration: InputDecoration(
//             icon: Icon(Icons.email),
//             border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//             label: Text('Email'),
//           ),
//         ),
//       ),
//       Padding(
//         padding: EdgeInsets.all(10.0),
//         child: TextField(
//           controller: passwordController,
//           obscureText: false,
//           decoration: InputDecoration(
//               border:
//                   OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//               icon: Icon(Icons.password),
//               label: Text('Password')),
//         ),
//       ),
//       ElevatedButton(
//           onPressed: () {
//             Navigator.pushNamed(context, AppRoute.homePage);
//           },
//           child: Text('Login')),
//       ElevatedButton(
//           onPressed: () {
//             Navigator.pushNamed(context, AppRoute.singuppage);
//           },
//           child: Text('Registration/ SignUp')),
//     ]));
//   }
// }
