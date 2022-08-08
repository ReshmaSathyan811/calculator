import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_marchh_new/ContactBook.dart';
import 'package:project_marchh_new/GridDemo.dart';
import 'package:project_marchh_new/GridViewBui.dart';
import 'package:project_marchh_new/GridViewTask.dart';
import 'package:project_marchh_new/HomePage.dart';
import 'package:project_marchh_new/ListViewBui.dart';
import 'package:project_marchh_new/LoginValidation.dart';
import 'package:project_marchh_new/StackDemo.dart';
import 'package:splashscreen/splashscreen.dart';

import 'LoginPage.dart';

void main() {
  runApp(MaterialApp(home: SplashScreenone()));
}

class SplashScreenone extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>
      SplashScreenoneState(); //initially ulla state define cheyyuka

}

class SplashScreenoneState extends State {
  // stateful statente akathanu state define cheyithu kodukan pattu
  // @override
  // void initState() {
  //   Timer(
  //       Duration(seconds: 5),
  //       () => Navigator.pushReplacement(//next pagileku pokan navigator use cheyyum
  //           context, MaterialPageRoute(builder: (context) => HomePage())));
  //   //materialpageroute use cheyithanu puthiya page create cheyyunnathu
  // }

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: GridDemo(),
      loaderColor: Colors.pink,
      loadingText: Text("Loading......."),
      image: Image.asset("asset/image/image1.png"),
      title: Text("Welcome"),
    );
  }
}

//       Scaffold(
//       backgroundColor: Colors.tealAccent,
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: NetworkImage(
//                 "data:image/jpeg;base64,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"),
//             // fit: BoxFit.cover
//           ),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: const [
//               // Image(
//               //     image: AssetImage("assets/images/feather.png"),//Google ninnu image select cheyithittu new tabil open cheyya, ah link ivide paste cheyyuka
//               //   height: 400, width:  400,
//               // ),
//               Icon(Icons.map, size: 100, color: Colors.deepPurple),
//               Text(
//                 "My world",
//                 style: TextStyle(
//                     fontSize: 40,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.red),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
