// import 'package:flutter/material.dart';
// import 'package:gradle/helper/constant.dart';


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

// class PostsView extends StatelessWidget {
//   const PostsView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final List<Post> posts = [
//       Post(
//         publisherImage: 'assets/images/child1.jpg',
//         publisherName: 'John Doe',
//         content: 'أنا طفل أرسم وأكتب وخواطر ولي هوايات أخرى مستمر في مدرستي وتشاعدني مدرسة بسمة على تعويض دروسي وأجد فيها كل ما هو مفيد',
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
//       ),    ];



//     return Scaffold(
//       body: Column(
//         children: [
//           Container(color: Colors.grey,width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.width / 4,),
//           Expanded(
//             child: ListView.builder(
//               itemCount: posts.length,
//               itemBuilder: (context, index) {
//                 final post = posts[index];
//                 return PostWidget(post: post);
//               },
//             ),
//           ),
// // TextButton(onPressed: (){}, child: Text('المزيد من المنشورات',style: TextStyle(color: Colors.grey),))      
//   ],
//       ),
//     );
//   }
// }

// class PostWidget extends StatelessWidget {
//   final Post post;

//   const PostWidget({Key? key, required this.post}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const SizedBox(height: 20,),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             Text(post.publisherName),
//             const SizedBox(width: 10),
//             CircleAvatar(
//               backgroundImage: AssetImage(post.publisherImage),
//             ),
//             SizedBox(width: 10,)
//           ],
//         ),
//         const SizedBox(height: 10),
//         if (post.content != null) Text(post.content!,textAlign: TextAlign.right,),
//         const SizedBox(height: 10),
//         if (post.image != null) Image.asset(post.image!),
//         const SizedBox(height: 10),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
           
//             Text(post.likesCount.toString()),
//              IconButton(
//               onPressed: () {
//                 // وظيفة الضغط على أيقونة القلب
//               },
//               icon: Icon(
//                 post.isLiked ? Icons.favorite : Icons.favorite_border,
//                 color: post.isLiked ? Colors.red : Colors.grey,
//               ),
//             ),
//           ],
//         ),
//         const SizedBox(height: 10,),
//         Divider( // أضف Divider بعد كل منشور
//           color: Colors.grey[300], // لون رمادي فاتح
//           height: 1.0, // سمك الخط
//         ),
//       ],
//     );
//   }
// }










// import 'dart:io';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:gradle/helper/constant.dart';
// import 'package:segmented_control/segmented_control.dart';



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

// class PostsView extends StatefulWidget {
//   const PostsView({Key? key}) : super(key: key);

//   @override
//   _PostsViewState createState() => _PostsViewState();
// }

// class _PostsViewState extends State<PostsView> {
//   final ScrollController _scrollController = ScrollController();
//   bool _showReadMoreButton = false;
//    String _selectedSegment = "All"; // Default selected segment

//   File? _image;


// @override
// void initState() {
//   super.initState();
//   _scrollController.addListener(_scrollListener);
//   // تحديث قيمة _showReadMoreButton عند تحميل الصفحة للمرة الأولى
// }

// void _scrollListener() {
//   // تحديث قيمة _showReadMoreButton عندما يتم التمرير في القائمة
//   _updateShowReadMoreButton(_scrollController.position);
// }

// void _updateShowReadMoreButton(ScrollPosition position) {
//   if (position.pixels == position.maxScrollExtent) {
//     setState(() {
//       _showReadMoreButton = true;
//     });
//   } else {
//     setState(() {
//       _showReadMoreButton = false;
//     });
//   }
// }





// @override
// void dispose() {
//   _scrollController.dispose();
//   super.dispose();
// }
//   /////////////////////////////////////////////////////
// //   void _pickImage() async {
// //     final image = await ImagePicker().pickImage(source: ImageSource.gallery);
// //     if (image != null) {
// //       setState(() {
// //         _image = File(image.path);
// //       });
// //  Navigator.of(context).pushNamed('/add_post_view'); 
 
// //      }
// //   }

//   @override
//   Widget build(BuildContext context) {
//     final List<Post> posts = [
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

//          Container(
          
//                width: MediaQuery.of(context).size.width,
//                height: MediaQuery.of(context).size.width / 5,
//          decoration: BoxDecoration(
//              color: yellow, // لون الخلفية
//              borderRadius: BorderRadius.circular(30.0), // جعل الحواف بيضوية
//              boxShadow: [
//                BoxShadow(
//                 //  color: Colors.grey.withOpacity(0.5),
//                     color: Colors.grey,

//                  spreadRadius: 5,
//                  blurRadius: 7,
//                  offset: Offset(0, 3), // تحديد موقع الظل بالنسبة للـ Container
//                ),
//              ],
//            ), 
//                 child: Row(
//                  children: [
//            _image != null
//               ? Image.file(
//                   _image!,
//                   width: 100,
//                   height: 100,
//                 )
//               : IconButton(
//                   // onPressed: _pickImage,
//                   onPressed: (){
//                      Navigator.of(context).pushNamed('/add_post_view'); 
//                   },
//                   icon: Icon(Icons.add_a_photo,color: Purple,),
//                 ),
                 
         
//           Expanded(
//             child: TextButton(onPressed: (){
//               Navigator.of(context).pushNamed('/add_post_view');
//             }, 
          
//             child: Text('... شاركنا نشاطاتك',),),
//           ),
         
         
//                  ],
//                ),
//              ),

           


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
//     );
//   }
// }




// class PostWidget extends StatelessWidget {
//   final Post post;

//   const PostWidget({Key? key, required this.post}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const SizedBox(height: 20,),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             Text(post.publisherName),
//             const SizedBox(width: 10),
//             CircleAvatar(
//               backgroundImage: AssetImage(post.publisherImage),
//             ),
//             SizedBox(width: 10,)
//           ],
//         ),
//         const SizedBox(height: 10),
//         if (post.content != null) Text(post.content!,textAlign: TextAlign.right,),
//         const SizedBox(height: 10),
//         if (post.image != null) Image.asset(post.image!),
//         const SizedBox(height: 10),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
           
//             Text(post.likesCount.toString()),
//              IconButton(
//               onPressed: () {
//                 // وظيفة الضغط على أيقونة القلب
//               },
//               icon: Icon(
//                 post.isLiked ? Icons.favorite : Icons.favorite_border,
//                 color: post.isLiked ? Colors.red : Colors.grey,
//               ),
//             ),
        
//           ],
//         ),
//         const SizedBox(height: 10,),
//         // Divider( // أضف Divider بعد كل منشور
//         //   color: Colors.grey[300], // لون رمادي فاتح
//         //   height: 1.0, // سمك الخط
//         // ),
// Image.asset('assets/images/green divider.gif'),
//       ],
//     );
//   }
// }









import 'dart:io';

import 'package:child_basma/helper/constant.dart';
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
  final String category; // Add category field

  Post({
    required this.publisherImage,
    required this.publisherName,
    this.content,
    this.image,
    required this.likesCount,
    required this.isLiked,
    required this.category, // Initialize category field
  });
}


class PostsView extends StatefulWidget {
  const PostsView({Key? key}) : super(key: key);

  @override
  _PostsViewState createState() => _PostsViewState();
}

class _PostsViewState extends State<PostsView> {
  final ScrollController _scrollController = ScrollController();
  bool _showReadMoreButton = false;
  ////////////////////////////////////////////////////////////////////////////////////
String _selectedCategory = "الكل"; // Default selected category
  final List<String> _categories = ['الكل', 'قصص', 'مواهب', 'أخرى'];


  File? _image;


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

///////////////////////////////////////////////////////////////////////////
void _onCategoryChanged(String category) {
    setState(() {
      _selectedCategory = category;
    });
  }

  // List<Post> _getFilteredPosts(List<Post> posts) {
  //   if (_selectedCategory == 'All') {
  //     return posts;
  //   } else {
  //     return posts.where((post) {
  //       if (_selectedCategory == 'Stories') {
  //         return post.content != null && post.image == null;
  //       } else if (_selectedCategory == 'Talents') {
  //         return post.image != null && post.content == null;
  //       } else {
  //         return post.content != null && post.image != null;
  //       }
  //     }).toList();
  //   }
  // }


List<Post> _getFilteredPosts(List<Post> posts) {
  if (_selectedCategory == 'الكل') {
    return posts;
  } else {
    final filteredPosts = posts.where((post) => post.category == _selectedCategory).toList();
    return filteredPosts.isNotEmpty ? filteredPosts : []; // Return an empty list if no posts found
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
    publisherName: 'John Doe',
    content:
        'أنا طفل أرسم وأكتب وخواطر ولي هوايات أخرى مستمر في مدرستي وتشاعدني مدرسة بسمة على تعويض دروسي وأجد فيها كل ما هو مفيد',
    image: 'assets/images/art1.jpeg',
    likesCount: 100,
    isLiked: false,
    category: 'قصص', // Added category
  ),
  Post(
    publisherImage: 'assets/images/child1.jpg',
    publisherName: 'John Doe',
    content:
        'أنا طفل أرسم وأكتب وخواطر ولي هوايات أخرى مستمر في مدرستي وتشاعدني مدرسة بسمة على تعويض دروسي وأجد فيها كل ما هو مفيد',
    image: 'assets/images/art1.jpeg',
    likesCount: 100,
    isLiked: false,
    category: 'قصص', // Added category
  ),
  Post(
    publisherImage: 'assets/images/child1.jpg',
    publisherName: 'John Doe',
    content:
        'أنا طفل أرسم وأكتب وخواطر ولي هوايات أخرى مستمر في مدرستي وتشاعدني مدرسة بسمة على تعويض دروسي وأجد فيها كل ما هو مفيد',
    image: 'assets/images/art1.jpeg',
    likesCount: 100,
    isLiked: false,
    category: 'قصص', // Added category
  ),
  Post(
    publisherImage: 'assets/images/child2.jpg',
    publisherName: 'Jane Doe',
    content: 'كتابة ورسم وموسيقا وفن احب كل ذلك واقرأ كتبا واطالع',
    likesCount: 50,
    isLiked: true,
    category: 'قصص', // Added category
  ),
   Post(
    publisherImage: 'assets/images/child2.jpg',
    publisherName: 'Jane Doe',
    content: 'كتابة ورسم وموسيقا وفن احب كل ذلك واقرأ كتبا واطالع',
    likesCount: 50,
    isLiked: true,
    category: 'قصص', // Added category
  ),
   Post(
    publisherImage: 'assets/images/child2.jpg',
    publisherName: 'Jane Doe',
    content: 'كتابة ورسم وموسيقا وفن احب كل ذلك واقرأ كتبا واطالع',
    likesCount: 50,
    isLiked: true,
    category: 'قصص', // Added category
  ),
  Post(
    publisherImage: 'assets/images/child3.jpg',
    publisherName: 'Peter Jones',
    image: 'assets/images/art2.jpg',
    likesCount: 20,
    isLiked: false,
    category: 'أخرى', // Added category
  ),
   Post(
    publisherImage: 'assets/images/child3.jpg',
    publisherName: 'Peter Jones',
    image: 'assets/images/art2.jpg',
    likesCount: 20,
    isLiked: false,
    category: 'أخرى', // Added category
  ),
   Post(
    publisherImage: 'assets/images/child3.jpg',
    publisherName: 'Peter Jones',
    image: 'assets/images/art2.jpg',
    likesCount: 20,
    isLiked: false,
    category: 'أخرى', // Added category
  ),
  Post(
    publisherImage: 'assets/images/child2.jpg',
    publisherName: 'Jane Doe',
    content: 'another content',
    likesCount: 50,
    isLiked: true,
    category: 'أخرى', // Added category
  ),
];

/////////////////////////////////////////////////////////////////////
    final List<Post> filteredPosts = _getFilteredPosts(posts);

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),

         Container(
          
               width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.width / 5,
         decoration: BoxDecoration(
             color: yellow, // لون الخلفية
             borderRadius: BorderRadius.circular(30.0), // جعل الحواف بيضوية
             boxShadow: [
               BoxShadow(
                //  color: Colors.grey.withOpacity(0.5),
                    color: Colors.grey,

                 spreadRadius: 5,
                 blurRadius: 7,
                 offset: Offset(0, 3), // تحديد موقع الظل بالنسبة للـ Container
               ),
             ],
           ), 
                child: Row(
                 children: [
           _image != null
              ? Image.file(
                  _image!,
                  width: 100,
                  height: 100,
                )
              : IconButton(
                  // onPressed: _pickImage,
                  onPressed: (){
                     Navigator.of(context).pushNamed('/add_post_view'); 
                  },
                  icon: Icon(Icons.add_a_photo,color: Purple,),
                ),
                 
         
          Expanded(
            child: TextButton(onPressed: (){
              Navigator.of(context).pushNamed('/add_post_view');
            }, 
          
            child: Text('... شاركنا نشاطاتك',),),
          ),
         
         
                 ],
               ),
             ),





////////////////////////////////////////////////////////////////
          SizedBox(height: 10),

CupertinoSegmentedControl(
  children: {
    for (var category in _categories)
      category: Padding(
        padding: EdgeInsets.symmetric(vertical: 4.0), // تحديد الهوامش العمودية
        child: Text(
          category,
          style: TextStyle(fontSize: 14), // تقليل حجم النص
        ),
      ),
  },
  groupValue: _selectedCategory,
  onValueChanged: _onCategoryChanged,
  borderColor: Purple3,
  selectedColor: Purple,
),



Expanded(
  child: filteredPosts.isEmpty
    ? Center(
        child: Text('..لا يوجد منشورات',style: TextStyle(color: Purple3),),
      )
    : ListView.builder(
        controller: _scrollController,
        itemCount: filteredPosts.length,
        itemBuilder: (context, index) {
          final post = filteredPosts[index];
          return PostWidget(post: post);
        },
      ),
),

         
          if (_showReadMoreButton)
            TextButton(
              onPressed: () {
              },
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




class PostWidget extends StatelessWidget {
  final Post post;

  const PostWidget({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(post.publisherName),
            const SizedBox(width: 10),
            CircleAvatar(
              backgroundImage: AssetImage(post.publisherImage),
            ),
            SizedBox(width: 10,)
          ],
        ),
        const SizedBox(height: 10),
        if (post.content != null) Text(post.content!,textAlign: TextAlign.right,),
        const SizedBox(height: 10),
        if (post.image != null) Image.asset(post.image!),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
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
        const SizedBox(height: 10,),
        Divider( // أضف Divider بعد كل منشور
          // color: Colors.grey[300], // لون رمادي فاتح
          color: green,
          height: 1.0, // سمك الخط
        ),
// Image.asset('assets/images/green divider.gif'),
      ],
    );
  }
}



















