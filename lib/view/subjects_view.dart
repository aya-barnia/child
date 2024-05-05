// import 'package:child_basma/helper/constant.dart';
// import 'package:child_basma/view/classes_view.dart';
// import 'package:flutter/material.dart';

// class Subjects {
//   final String subject_name;

//   Subjects({
//     required this.subject_name,
//   });
// }

//      final List<Subjects> subjects = [
//   Subjects(
//     subject_name: 'رياضيات',
//   ),
//   Subjects(
//     subject_name:"فيزياء " ,
//   ),
//   Subjects(
//     subject_name: "علوم ",
//   ),
//    Subjects(
//     subject_name: "لغة انكليزية ",
//   ),
//    Subjects(
//     subject_name: "جغرافية  ",
//   ),
//    Subjects(
//     subject_name: "كيمياء  ",
//   ),

// ];

// class subjects_view extends StatelessWidget {
//   const subjects_view({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//       children: [
//         Stack(
//           children: [
//             ClipPath(
//               clipper: TsClip2(),
//               child: Container(
//                 color: green2,
//                 height: 200,
//               ),
//             ),

//             Row(
//               children: [
//                 SizedBox(width:40 ,),
//                 Text('هيا لنتعلم معاً',style: TextStyle(color: yellow,fontWeight: FontWeight.bold,fontSize: 30),),
//                 Expanded(child: Image.asset('assets/images/pencel.gif')),

//               ],
//             ),

//           ],
//         ),

//          Expanded(
//           child :

//           ),

//       ],
//     )
//     );
//   }
// }

import 'package:child_basma/helper/constant.dart';
import 'package:child_basma/view/classes_view.dart';
import 'package:flutter/material.dart';

class Subjects {
  final String subject_name;

  Subjects({
    required this.subject_name,
  });
}

final List<Subjects> subjects = [
  Subjects(
    subject_name: 'رياضيات',
  ),
  Subjects(
    subject_name: "فيزياء ",
  ),
  Subjects(
    subject_name: "علوم ",
  ),
  Subjects(
    subject_name: "لغة انكليزية ",
  ),
  Subjects(
    subject_name: "جغرافية  ",
  ),
  Subjects(
    subject_name: "كيمياء  ",
  ),
];

class SubjectsView extends StatelessWidget {
  const SubjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chat,
              color: yellow,
            ),
          )
        ],
        leading: Image(image: AssetImage('assets/images/basma.png')),
        backgroundColor: green2,
        title: Center(
          child: Text(
            'مدرسة بسمة',
            style: TextStyle(
              color: yellow,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: TsClip2(),
                child: Container(
                  color: green2,
                  height: 200,
                ),
              ),
              Row(
                children: [
                  SizedBox(width: 40),
                  Text(
                    'هيا لنتعلم معاً',
                    style: TextStyle(
                      color: yellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  Expanded(
                    child: Image.asset('assets/images/pencel.gif'),
                  ),
                ],
              ),
            ],
          ),
          // Expanded(
          //   child: ListView.builder(
          //     padding: EdgeInsets.symmetric(
          //         horizontal: 20,), // إضافة تباعد عمودي بين العناصر

          //     itemCount: subjects.length,
          //     itemBuilder: (BuildContext context, int index) {
          //       return ListTile(
          //         title: Text(
          //           subjects[index].subject_name,
          //           textAlign: TextAlign.center,
          //         ),
          //         // tileColor: colors[index % colors.length].withOpacity(0.5),
          //         tileColor: colors[index % colors.length],

          //         onTap: () {
          //           print(
          //               "لقد نقرت على العنصر: ${subjects[index].subject_name}");
          //         },
          //         shape: RoundedRectangleBorder(
          //           borderRadius:
          //               BorderRadius.circular(20.0), // حدد نصف قطر التكبير
          //         ),
          //         contentPadding: EdgeInsets.all(16.0),
          //       );

          //     },
          //   ),
          // ),

          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              itemCount: subjects.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    ListTile(
                      title: Text(
                        subjects[index].subject_name,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold,),
                      ),
                      tileColor: colors[index % colors.length],
                      onTap: () {
                        print(
                            "لقد نقرت على العنصر: ${subjects[index].subject_name}");
                        Navigator.of(context).pushNamed('/lessons_view');
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      contentPadding: EdgeInsets.all(16.0),
                    ),
                    const SizedBox(height: 10.0),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
