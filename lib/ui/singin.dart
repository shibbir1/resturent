// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:khadok_application_8/ui/route.dart';

// class SignIn extends StatefulWidget {
//   @override
//   State<SignIn> createState() => _SignInState();
// }

// class _SignInState extends State<SignIn> {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   // FirebaseAuth auth = FirebaseAuth.instance;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           RichText(
//             textAlign: TextAlign.center,
//             text: TextSpan(
//                 text: 'Code',
//                 style: TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.w700,
//                   color: Colors.green,
//                 ),
//                 children: [
//                   TextSpan(
//                     text: 'Cn',
//                     style: TextStyle(
//                       fontSize: 30,
//                       fontWeight: FontWeight.w700,
//                       color: Colors.black,
//                     ),
//                   ),
//                   TextSpan(
//                     text: 'Do',
//                     style: TextStyle(
//                       fontSize: 30,
//                       fontWeight: FontWeight.w700,
//                       color: Colors.red,
//                     ),
//                   ),
//                 ]),
//           ),
//           Padding(
//             padding: EdgeInsets.all(10),
//             child: TextField(
//               controller: emailController,
//               obscureText: false,
//               decoration: InputDecoration(
//                 icon: Icon(Icons.email),
//                 border:
//                     OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                 label: Text('Email'),
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(10.0),
//             child: TextField(
//               controller: passwordController,
//               obscureText: false,
//               decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20)),
//                   icon: Icon(Icons.password),
//                   label: Text('Password')),
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () async {
//               // Navigator.pushNamed(context, AppRoutesPath. MyHomePage);
//               // print(emailController.text);
//               // print(passwordController.text);
//               print(emailController.text);
//               print(passwordController.text);
//               try {
//                 final uesr = await auth.signInWithEmailAndPassword(
//                     email: emailController.text,
//                     password: passwordController.text.toString().trim());
//                 if (uesr != null) {
//                   print(uesr);

//                   Navigator.pushNamed(context, '/Drawer');
//                 }
//               } on FirebaseAuthException catch (e) {
//                 print(e.code);

//                 if (e.code == 'User Not Found') {
//                   Fluttertoast.showToast(
//                       msg: "User Not Found",
//                       toastLength: Toast.LENGTH_SHORT,
//                       gravity: ToastGravity.CENTER,
//                       timeInSecForIosWeb: 1,
//                       backgroundColor: Colors.red,
//                       textColor: Colors.white,
//                       fontSize: 16.0);
//                 } else if (e.code == 'wrong password') {
//                   Fluttertoast.showToast(
//                     msg: 'wrong password',
//                     toastLength: Toast.LENGTH_SHORT,
//                     fontSize: 16.0,
//                   );
//                 } else {}
//               }
//             },
//             child: Text('login'),
//           ),
//           SizedBox(
//             height: 10.0,
//           ),
//           TextButton(
//             onPressed: () {
//               Navigator.pushNamed(context, AppRoute.homePage);
//             },
//             child: Text(
//               'Registration/ SignUp',
//               style: TextStyle(color: Colors.white),
//             ),
//             style: TextButton.styleFrom(backgroundColor: Colors.black),
//           )
//         ],
//       ),
//     );
//   }
// }
