import 'package:child_basma/helper/constant.dart';
import 'package:child_basma/view/classes_view.dart';
import 'package:flutter/material.dart';




class Lessons {
  final String lesson_name;
  final String lesson_number;

  Lessons({
    required this.lesson_number,
        required this.lesson_name,

  });
}

final List<Lessons> lessons = [
  Lessons(
    lesson_number:'الدرس الأول',
    lesson_name: 'الأعداد العشرية',
  ),
  Lessons(
    lesson_number:'الدرس الثاني',
    lesson_name: "جمع الكسور ",
  ),
  Lessons(
     lesson_number:'الدرس الثالث',
    lesson_name: "ضرب الكسور ",
  ),
  Lessons(
        lesson_number:'الدرس الرابع',
    lesson_name: "القوى  ",
  ),
  Lessons(
        lesson_number:'الدرس الخامس',
    lesson_name: "جمع الاشارات  ",
  ),
  Lessons(
        lesson_number:'الدرس السادس',
    lesson_name: "ضرب الاشارات  ",
  ),
];





class LessonsView extends StatelessWidget {
  const LessonsView({super.key});

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
//         Expanded(
//             child: ListView.builder(
//               itemCount: lessons.length,
//               itemBuilder: (context, index) {
//                 final lesson = lessons[index];
//                 return Card(
//                   margin: EdgeInsets.all(10),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: ListTile(
//                     leading: CircleAvatar(
//                       child: Text(
//                         lesson.lesson_number,
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       backgroundColor: green2,
//                     ),
//                     title: Text(
//                       lesson.lesson_name,
//                       style: TextStyle(fontSize: 20),
//                     ),
//                     trailing: Icon(
//                       Icons.arrow_forward_ios,
//                       color: green2,
//                     ),
//                     onTap: () {
//                       // Navigate to the lesson details screen
                     
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


    Expanded(
            child: ListView.builder(
              itemCount: lessons.length,
              itemBuilder: (context, index) {
                final lesson = lessons[index];
                return Card(
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: ListTile(
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: green2,
                      ),
                      title: Text(
                        lesson.lesson_name,
                        style: TextStyle(fontSize: 20),
                      ),
                      leading: 
                     
                         Text(
                          lesson.lesson_number,
                          style: TextStyle(
                            color: green,
                            fontWeight: FontWeight.bold,
                             fontSize: 20,
                          ),
                        ),
                   
                      onTap: () {
                        // Navigate to the lesson details screen
                     
                    },
                  ),
                  )
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}