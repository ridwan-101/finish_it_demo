// loading screen

// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:finish_it_demo/features/search%20result/ui/custom%20containers/refresh_logic.dart';
import 'package:finish_it_demo/ui/landingpage.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Recipe List",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF323232)),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      const LandingPage()), // Replace NewPage with your actual page widget
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Align(
            alignment: Alignment.centerLeft,
            child: CustomButtonContainer(
              onTap: () {
                // Refresh logic here
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/loading.gif', width: 150),
            ],
          ),
          SizedBox(
            height: 46,
          ),
          Text(
            "Recipe hunt in progress...  please be patient.",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Color(0xFF000000),
              letterSpacing: 2.4,
            ),
            textAlign: TextAlign.center,
          )
        ]),
      ),
    );
  }
}

// body: Container(
//   color: Colors.white,
//   padding: EdgeInsets.all(20),
//   child: SingleChildScrollView(
//     child:
//         Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//       SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: Row(
//           children: [
//             Container(
//                 decoration: BoxDecoration(
//                     color: Color(0xFFF2F6F4),
//                     borderRadius: BorderRadius.circular(8),
//                     border:
//                         Border.all(color: Color(0xFFCCC6C6), width: 1)),
//                 padding:
//                     EdgeInsets.symmetric(vertical: 6, horizontal: 12),
//                 child: Row(
//                   children: [
//                     Text('Rice',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.w500,
//                           color: Color(0xFF323232),
//                         )),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Image.asset('images/x.png')
//                   ],
//                 )),
//             SizedBox(
//               width: 12,
//             ),
//             Container(
//                 decoration: BoxDecoration(
//                     color: Color(0xFFF2F6F4),
//                     borderRadius: BorderRadius.circular(8),
//                     border:
//                         Border.all(color: Color(0xFFCCC6C6), width: 1)),
//                 padding:
//                     EdgeInsets.symmetric(vertical: 6, horizontal: 12),
//                 child: Row(
//                   children: [
//                     Text('Egg',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.w500,
//                           color: Color(0xFF323232),
//                         )),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Image.asset('images/x.png')
//                   ],
//                 )),
//             SizedBox(
//               width: 12,
//             ),
//             Container(
//                 decoration: BoxDecoration(
//                     color: Color(0xFFF2F6F4),
//                     borderRadius: BorderRadius.circular(8),
//                     border:
//                         Border.all(color: Color(0xFFCCC6C6), width: 1)),
//                 padding:
//                     EdgeInsets.symmetric(vertical: 6, horizontal: 12),
//                 child: Row(
//                   children: [
//                     Text('Olive oil',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.w500,
//                           color: Color(0xFF323232),
//                         )),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Image.asset('images/x.png')
//                   ],
//                 )),
//             SizedBox(
//               width: 12,
//             ),
//             Image.asset('images/Add.png')
//           ],
//         ),
//       ),
//       SizedBox(
//         height: 20,
//       ),
//       Container(
//         decoration: BoxDecoration(
//             color: Color(0xFF455A64),
//             borderRadius: BorderRadius.circular(8)),
//         padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//         child: IntrinsicWidth(
//           child: Row(
//             children: [
//               Text('Refresh results',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w400,
//                     color: Color(0xFFFAFAFA),
//                   )),
//               SizedBox(
//                 width: 8,
//               ),
//               Image.asset(
//                 'images/refresh.png',
//               )
//             ],
//           ),
//         ),
//       ),
//       SizedBox(
//         height: 77,
//       ),
      // SizedBox(
      //   height: MediaQuery.of(context).size.height,
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Image.asset('images/loainggif.gif', width: 150),
      //         ],
      //       ),
            // SizedBox(
            //   height: 46,
            // ),
            // Text(
            //   "Recipe hunt in progress...  please be patient.",
            //   style: TextStyle(
            //     fontSize: 20,
            //     fontWeight: FontWeight.w500,
            //     color: Color(0xFF000000),
            //     letterSpacing: 2.4,
            //   ),
            //   textAlign: TextAlign.center,
            // )
//           ],
//         ),
//       ),
//     ]),
//   ),
// ),
