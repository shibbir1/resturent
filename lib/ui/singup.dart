// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:khadok_application_8/ui/route.dart';

// class SignUp extends StatelessWidget {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   FirebaseAuth auth = FirebaseAuth.instance;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: [
//             RichText(
//               textAlign: TextAlign.center,
//               text: TextSpan(
//                   text: 'Code',
//                   style: TextStyle(
//                     fontSize: 30,
//                     fontWeight: FontWeight.w700,
//                     color: Colors.green,
//                   ),
//                   children: [
//                     TextSpan(
//                       text: 'Cn',
//                       style: TextStyle(
//                         fontSize: 30,
//                         fontWeight: FontWeight.w700,
//                         color: Colors.black,
//                       ),
//                     ),
//                     TextSpan(
//                       text: 'Do',
//                       style: TextStyle(
//                         fontSize: 30,
//                         fontWeight: FontWeight.w700,
//                         color: Colors.red,
//                       ),
//                     ),
//                   ]),
//             ),
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: TextField(
//                         obscureText: false,
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20)),
//                           label: Text(
//                             'Fast Name',
//                             style: TextStyle(),
//                           ),
//                           prefixIcon: Icon(Icons.text_fields),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Expanded(
//                       child: TextField(
//                         obscureText: false,
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20)),
//                           label: Text('Last Name'),
//                           prefixIcon: Icon(Icons.text_fields),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: TextField(
//                         obscureText: false,
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20)),
//                           label: Text('Mubile Number'),
//                           prefixIcon: Icon(Icons.text_fields),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Expanded(
//                       child: TextField(
//                         obscureText: false,
//                         decoration: InputDecoration(
//                             border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(20)),
//                             label: Text('Date of Birth'),
//                             prefixIcon: Icon(Icons.email)),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 controller: emailController,
//                 obscureText: false,
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20)),
//                     label: Text('Email')),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 controller: passwordController,
//                 obscureText: false,
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20)),
//                     label: Text('password')),
//               ),
//             ),
//             ElevatedButton(
//                 onPressed: () async {
//                   try {
//                     final uesr = await auth.createUserWithEmailAndPassword(
//                         email: emailController.text.toString(),
//                         password: passwordController.text.toString().trim());
//                     if (uesr != null) {
//                       print(uesr);

//                       Navigator.pushNamed(context, '/');
//                     }
//                   } on FirebaseAuthException catch (e) {
//                     print(e.code);
//                   }
//                 },
//                 child: Text('Registration')),
//             SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 showDialog(
//                   context: context,
//                   builder: (context) => AlertDialog(
//                     title: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text('Save Information'),
//                     ),
//                     backgroundColor: Colors.pink,
//                     content: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text('LogIn'),
//                       ],
//                     ),
//                     actions: [
//                       ElevatedButton(
//                           onPressed: () {
//                             Navigator.pushNamed(context, AppRoute.signin);
//                           },
//                           child: Text('Ok')),
//                       ElevatedButton(
//                           onPressed: () {
//                             Navigator.pop(context);
//                           },
//                           child: Text('No'))
//                     ],
//                   ),
//                 );
//               },
//               child: const Text('login'),
//             ),
//             SizedBox(
//               height: 10.0,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
