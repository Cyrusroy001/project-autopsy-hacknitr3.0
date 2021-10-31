// // ignore_for_file: file_names, prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class PatientLogin extends StatefulWidget {
//   @override
//   _PatientLoginState createState() => _PatientLoginState();
// }

// class _PatientLoginState extends State<PatientLogin> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
//   String logintxt="Login";
//   String headertxt="Enter your credentials";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.symmetric(horizontal: 10),
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         alignment: Alignment.center,
//         child: Form(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [Center(child: Text(headertxt),),
//             SizedBox(height: 55),
//               TextFormField(
//                 controller: _emailController,
//                 style: TextStyle(fontSize: 22, color: Colors.black),
//                 decoration: InputDecoration(
//                   hintText: "Email Address",
//                   hintStyle: TextStyle(fontSize: 22, color: Colors.black),
//                 ),
//               ),
//               SizedBox(
//                 height: 25,
//               ),
//               TextFormField(
//                 controller: _passwordController,
//                 obscureText: true,
//                 style: TextStyle(fontSize: 22, color: Colors.black),
//                 decoration: InputDecoration(
//                   hintText: "Password",
//                   hintStyle: TextStyle(fontSize: 22, color: Colors.black),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 children: [
//                   Expanded(
//                       child: ElevatedButton(
//                           onPressed: () async {
//                             await _firebaseAuth.createUserWithEmailAndPassword(
//                                 email: _emailController.text,
//                                 password: _passwordController.text);
//                           },
//                           child: Text('Register'))),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Expanded(
//                       child: ElevatedButton(
//                           onPressed: () async {
//                             try{
//                             await _firebaseAuth
//                                 .signInWithEmailAndPassword(
//                                     email: _emailController.text,
//                                     password: _passwordController.text)
//                                 .then((value) => print('Login Successful'));
//                                 Navigator.pushNamed(context, '/PatientDashboard');}
//                                 catch(e){print(e); 
//                                 setState(() {
//                                 headertxt="Error";
                                  
//                                 });
//                                 }
//                           },
//                           child: Text(logintxt)))
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

// }
