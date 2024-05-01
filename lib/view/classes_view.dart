import 'package:child_basma/helper/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Classes {
  final String className;

  Classes({
    required this.className,
  });
}
final List<Color> colors = [yellow, green, blue,Purple];

class ClassesView extends StatelessWidget {
  const ClassesView({super.key});

  @override
  Widget build(BuildContext context) {

     final List<Classes> classes = [
  Classes(
    className: 'الصف الأول', 
  ),
  Classes(
    className: 'الصف الثاني', 
  ),
  Classes(
    className: 'الصف الثالث', 
  ),
  Classes(
    className: 'الصف الرابع', 
  ),
   Classes(
    className: 'الصف الخامس', 
  ),
    Classes(
    className: 'الصف السادس', 
  ),
  Classes(
    className: 'الصف السابع', 
  ),
    Classes(
    className: 'الصف الثامن', 
  ),
   Classes(
    className: 'الصف التاسع', 
  ),
   Classes(
    className: 'الصف العاشر', 
  ),
  Classes(
    className: 'الصف الحادي عشر', 
  ),
  Classes(
    className: 'الصف الثاني عشر', 
  ),
];
final gridDelegate = SliverGridDelegateWithFixedCrossAxisCount(
  crossAxisCount: 2, // عدد الأعمدة في الشبكة
  mainAxisSpacing: 20.0, // المسافة بين العناصر في الاتجاه الرئيسي (عمودياً)
  crossAxisSpacing: 20.0, // المسافة بين العناصر في الاتجاه العرضي (أفقياً)
  childAspectRatio: 1, // نسبة العرض إلى الارتفاع لكل عنصر
);



    return Scaffold(
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
                SizedBox(width:40 ,),
                Text('هيا لنتعلم معاً',style: TextStyle(color: yellow,fontWeight: FontWeight.bold,fontSize: 30),),
                Expanded(child: Image.asset('assets/images/pencel.gif')),

              ],
            ),

          ],
        ),
       
Expanded(


child :GridView.builder(
  gridDelegate: gridDelegate,
  itemCount: classes.length,
  itemBuilder: (BuildContext context, int index) {
    final currentClass = classes[index];
    // تحديد الصورة بناءً على الفهرس index
    final imageUrl = 'assets/images/${index + 1}.png';
        final colorIndex = index % colors.length; // حساب فهرس اللون باستخدام القسمة المتبقية

    return ClassWidget(
      // color: yellow,
            color: colors[colorIndex], // استخدام اللون المحدد من القائمة

      imageUrl: imageUrl,
      text: currentClass.className,
    );
  },
),



)
          
      ],
    )
    );
  }
}

class TsClip2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height - 50);
    path.quadraticBezierTo(
        size.width * 3 / 4, size.height - 100, size.width, size.height - 100);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}



// class ClassWidget extends StatelessWidget {

//   const ClassWidget({
//     Key? key,
//     required this.color, // وسيطة لون container
//     required this.imageUrl, // وسيطة رابط الصورة
//     required this.text, 
//     // وسيطة نص الكتابة
//   }) : super(key: key);

//   final Color color;
//   final String imageUrl;
//   final String text;


//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: color, // استخدام لون container
//         borderRadius: BorderRadius.circular(20), // حواف دائرية
//       ),
//       padding: const EdgeInsets.all(16), // مسافة داخل container
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           CircleAvatar(
//             backgroundColor: Colors.white, // لون خلفية circle avatar
//             backgroundImage: AssetImage(imageUrl), // استخدام رابط الصورة
//             radius: 40, // نصف قطر circle avatar
//           ),
//           const SizedBox(height: 16), // مسافة بين circle avatar والنص
//           Text(
//             text,
//             style: const TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//             ),
//             textAlign: TextAlign.center, // محاذاة النص في المنتصف
//           ),
//         ],
//       ),
//     );
//   }
// }



class ClassWidget extends StatelessWidget {
  const ClassWidget({
    Key? key,
    required this.color,
    required this.imageUrl,
    required this.text,
  }) : super(key: key);

  final Color color;
  final String imageUrl;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: () {
         Navigator.of(context).pushNamed('/subjects_view');

     },
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
backgroundColor: Colors.white.withOpacity(0.5),
              backgroundImage: AssetImage(imageUrl), // استخدام رابط الصورة
              radius: 40,
            ),
            const SizedBox(height: 16),
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
