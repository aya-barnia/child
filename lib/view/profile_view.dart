// import 'package:flutter/material.dart';
// import 'package:gradle/helper/constant.dart';
// import 'package:gradle/view/posts_view.dart';

// class Post {
//   final String publisherImage;
//   final String publisherName;
//   final String? content;
//   final String? image;
//   final int likesCount;
//   final bool isLiked;

//   Post({
//     required this.publisherImage,
//     required this.publisherName,
//     this.content,
//     this.image,
//     required this.likesCount,
//     required this.isLiked,
//   });
// }

// class ProfileView extends StatefulWidget {
//   const ProfileView({super.key});
//   @override
//   Widget build(BuildContext context) {

//      final List<Post> posts = [
//       Post(
//         publisherImage: 'assets/images/child1.jpg',
//         publisherName: 'John Doe',
//         content:
//             'أنا طفل أرسم وأكتب وخواطر ولي هوايات أخرى مستمر في مدرستي وتشاعدني مدرسة بسمة على تعويض دروسي وأجد فيها كل ما هو مفيد',
//         image: 'assets/images/art1.jpeg',
//         likesCount: 100,
//         isLiked: false,
//       ),
//       Post(
//         publisherImage: 'assets/images/child2.jpg',
//         publisherName: 'Jane Doe',
//         content: 'كتابة ورسم وموسيقا وفن احب كل ذلك واقرأ كتبا واطالع',
//         likesCount: 50,
//         isLiked: true,
//       ),
//       Post(
//         publisherImage: 'assets/images/child3.jpg',
//         publisherName: 'Peter Jones',
//         image: 'assets/images/art2.jpg',
//         likesCount: 20,
//         isLiked: false,
//       ),
//       Post(
//         publisherImage: 'assets/images/child2.jpg',
//         publisherName: 'Jane Doe',
//         content: 'another content',
//         likesCount: 50,
//         isLiked: true,
//       ),
//     ];

//     return Scaffold(
//       body: Column(
//         children: [
//           SizedBox(
//             height: 10,
//           ),

//           Expanded(
//             child: ListView.builder(
//               controller: _scrollController,
//               itemCount: posts.length,
//               itemBuilder: (context, index) {
//                 final post = posts[index];
//                 return PostWidget(post: post);

//               },
//             ),
//           ),
//           if (_showReadMoreButton)
//             TextButton(
//               onPressed: () {
//               },
//               child: Text(
//                 'قراءة المزيد',
//                 style: TextStyle(color: Colors.grey),
//               ),
//             ),

//         ],
//       ),
//     );  }

//       @override
//       State<StatefulWidget> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//       }
// }

//import 'dart:io';

import 'package:child_basma/helper/constant.dart';
import 'package:child_basma/view/classes_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Post {
  final String publisherImage;
  final String publisherName;
  final String? content;
  final String? image;
  final int likesCount;
  final bool isLiked;

  Post({
    required this.publisherImage,
    required this.publisherName,
    this.content,
    this.image,
    required this.likesCount,
    required this.isLiked,
  });
}

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  _PostsViewState createState() => _PostsViewState();
}

class _PostsViewState extends State<ProfileView> {
  final ScrollController _scrollController = ScrollController();
  bool _showReadMoreButton = false;

  // File? _image;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
    // تحديث قيمة _showReadMoreButton عند تحميل الصفحة للمرة الأولى
  }

  void _scrollListener() {
    // تحديث قيمة _showReadMoreButton عندما يتم التمرير في القائمة
    _updateShowReadMoreButton(_scrollController.position);
  }

  void _updateShowReadMoreButton(ScrollPosition position) {
    if (position.pixels == position.maxScrollExtent) {
      setState(() {
        _showReadMoreButton = true;
      });
    } else {
      setState(() {
        _showReadMoreButton = false;
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  /////////////////////////////////////////////////////
//   void _pickImage() async {
//     final image = await ImagePicker().pickImage(source: ImageSource.gallery);
//     if (image != null) {
//       setState(() {
//         _image = File(image.path);
//       });
//  Navigator.of(context).pushNamed('/add_post_view');

//      }
//   }

  @override
  Widget build(BuildContext context) {
    final List<Post> posts = [
      Post(
        publisherImage: 'assets/images/child1.jpg',
        publisherName: 'سارة عمر',
        content:
            'أنا طفل أرسم وأكتب وخواطر ولي هوايات أخرى مستمر في مدرستي وتشاعدني مدرسة بسمة على تعويض دروسي وأجد فيها كل ما هو مفيد',
        image: 'assets/images/art1.jpeg',
        likesCount: 100,
        isLiked: false,
      ),
      Post(
        publisherImage: 'assets/images/child1.jpg',
        publisherName: 'سارة عمر',
        content: 'كتابة ورسم وموسيقا وفن احب كل ذلك واقرأ كتبا واطالع',
        likesCount: 50,
        isLiked: true,
      ),
      Post(
        publisherImage: 'assets/images/child1.jpg',
        publisherName: 'سارة عمر',
        image: 'assets/images/art2.jpg',
        likesCount: 20,
        isLiked: false,
      ),
      Post(
        publisherImage: 'assets/images/child1.jpg',
        publisherName: 'سارة عمر',
        content: 'another content',
        likesCount: 50,
        isLiked: true,
      ),
    ];

    return Scaffold(
      body: Column(
        children: [
          // Container(
          //   child: Row(
          //     children: [
          //       Text('سارة عمر'),
          //        CircleAvatar(
          //     backgroundImage: AssetImage('assets/images/child1.jpg'),
          //   ),
          //     ],
          //   ),
          //   color: blue,
          //   width: MediaQuery.of(context).size.width,
          //   height: MediaQuery.of(context).size.width/5,
          //   decoration: BoxDecoration(
          //    borderRadius: BorderRadius.circular(30.0), // جعل الحواف بيضوية
          //   ),
          // ),
          SizedBox(
            height: 20,
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       // Expanded(child: Image.asset('assets/images/divider.gif')),
          //       Text('سارة عمر'),
          //       const SizedBox(width: 10),
          //        CircleAvatar(
          //     backgroundImage: AssetImage('assets/images/child1.jpg'),
          //   ),
          //                   // Expanded(child: Image.asset('assets/images/divider.gif')),

          //   ]
          //   ),
          //             SizedBox(height: 20,),

          //   Divider(
          //     color: blue,
          //     thickness: 5,
          //   ),

          Directionality(
            textDirection: TextDirection.rtl,
            child: ListTile(

              // tileColor: Colors.grey.shade300,
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/child1.jpg'),
              ),
              title: Text('سارة عمر',style: TextStyle(color: blue2,),),
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(30.0), // Adjust the radius as needed
              ),
            ),
          ),
         
          Divider(
            color: blue2,
            thickness: 4,
          ),

          SizedBox(
            height: 10,
          ),

          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return MyPostWidget(post: post);
              },
            ),
          ),
          if (_showReadMoreButton)
            TextButton(
              onPressed: () {},
              child: Text(
                'قراءة المزيد',
                style: TextStyle(color: Colors.grey),
              ),
            ),
        ],
      ),
    );
  }
}

class MyPostWidget extends StatelessWidget {
  final Post post;

  const MyPostWidget({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(post.publisherName),
            const SizedBox(width: 10),
            CircleAvatar(
              backgroundImage: AssetImage(post.publisherImage),
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        const SizedBox(height: 10),
        if (post.content != null)
          Text(
            post.content!,
            textAlign: TextAlign.right,
          ),
        const SizedBox(height: 10),
        if (post.image != null) Image.asset(post.image!),
        const SizedBox(height: 10),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: [

        //      IconButton(
        //       onPressed: () {
        //       },
        //       icon: Icon(
        //         Icons.delete_forever,
        //         color: Colors.grey,
        //       ),
        //     ),

        //     Text(post.likesCount.toString()),

        //      IconButton(
        //       onPressed: () {
        //         // وظيفة الضغط على أيقونة القلب
        //       },
        //       icon: Icon(
        //         post.isLiked ? Icons.favorite : Icons.favorite_border,
        //         color: post.isLiked ? Colors.red : Colors.grey,
        //       ),
        //     ),

        //   ],
        // ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                // وظيفة الضغط على أيقونة الحذف
              },
              icon: Icon(
                Icons.close,
                color: Colors.grey,
              ),
            ),
            Row(
              children: [
                Text(post.likesCount.toString()),
                IconButton(
                  onPressed: () {
                    // وظيفة الضغط على أيقونة القلب
                  },
                  icon: Icon(
                    post.isLiked ? Icons.favorite : Icons.favorite_border,
                    color: post.isLiked ? Colors.red : Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),

        const SizedBox(
          height: 10,
        ),

        WavyDivider(),
// Image.asset('assets/images/green divider.gif')
      ],
    );
  }
}

class WavyDividerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = blue // لون الخط
      ..strokeWidth = 1; // سمك الخط

    // رسم الموجات
    Path path = Path();
    path.moveTo(0, size.height / 2); // البداية

    // تحديد الموجات بالمنحنيات البيزيه
    for (double i = 0; i <= size.width; i += 10) {
      path.relativeQuadraticBezierTo(5, -10, 10, 0); // المنحنى الأول
      path.relativeQuadraticBezierTo(5, 10, 10, 0); // المنحنى الثاني
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class WavyDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(MediaQuery.of(context).size.width, 20),
      painter: WavyDividerPainter(),
    );
  }
}
