//import 'package:antihacherapp/home_page/home_page.dart';

import 'package:antihacherapp/login_page/view/login_page00.dart';
import 'package:firebase_core/firebase_core.dart';

//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
//import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Color.fromARGB(255, 224, 255, 255),
      scaffoldBackgroundColor: Color.fromARGB(255, 224, 255, 255),
      secondaryHeaderColor: Color.fromARGB(255, 224, 255, 255),
    ),
    home: LoginPage00(),
  ));
}
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();

//   FirebaseFirestore db = FirebaseFirestore.instance;

//   DocumentReference ref = await db.collection('usuarios').add(
//     {
//       "nome": "José",
//       "idade": "25",
//       "peso": "1.90",
//     },
//   );
//   print('documento de referencia' + ref.id );

//   // FirebaseFirestore.instance
//   //     .collection('usuarios')
//   //     .doc('pontuacao')
//   //     .set({"Juca11": "80", "Felipe": "43"});

//   runApp(MyApp(
//     home
//   ));
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
