

import 'dart:io';

import 'package:child_basma/helper/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

class add_post_view extends StatefulWidget {
  @override
  _PostCreationScreenState createState() => _PostCreationScreenState();
}

class _PostCreationScreenState extends State<add_post_view> {
  TextEditingController _textEditingController = TextEditingController();
  File? _image;

  void _pickImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

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
        title: Center(
          child: const Text(
            'شاركنا نشاطاتك ',
            style: TextStyle(
              color: const Color.fromARGB(255, 232, 213, 128),
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        backgroundColor: Purple, // تغيير لون AppBar
        leading: Image(image: AssetImage('assets/images/basma.png')),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                controller: _textEditingController,
                maxLines: 4,
                textAlign: TextAlign.right, // تعيين النص في اليمين
                decoration: InputDecoration(
                  hintText: '... بماذا تفكر',
                  border: OutlineInputBorder(),
                  alignLabelWithHint: true, // توجيه النص مع التلميح
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 200,
                color: const Color.fromARGB(255, 232, 230, 230),
                child: _image == null
                    ? IconButton(
                        onPressed: _pickImage,
                        icon: Icon(Icons.add_a_photo, color: Purple2),
                      )
                    : Image.file(
                        _image!,
                        // fit: BoxFit.fitWidth,
                      ),
                alignment: Alignment.center,
              ),
                SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                //  Navigator.of(context).pushNamed('/posts_view');
                                    Navigator.of(context).pushNamed('/main');

                },
                child: Text('نشر'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      yellow), // تحديد لون الخلفية
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Purple2), // تحديد لون النص
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    TextStyle(fontSize: 20), // تحديد حجم النص
                  ),
                ),
              ),
            
              SizedBox(height: 20),
              Image(image: AssetImage('assets/images/thinking2.gif')),
            ],
          ),
        ),
      ),
    );
  }
}






// import 'dart:io';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class AddPostView extends StatefulWidget {
//   @override
//   _AddPostViewState createState() => _AddPostViewState();
// }

// class _AddPostViewState extends State<AddPostView> {
//   TextEditingController _textEditingController = TextEditingController();
//   File? _image;

//   void _pickImage() async {
//     final image = await ImagePicker().pickImage(source: ImageSource.gallery);
//     if (image != null) {
//       setState(() {
//         _image = File(image.path);
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: Icon(
//               Icons.chat,
//               color: Colors.yellow,
//             ),
//           )
//         ],
//         title: Center(
//           child: const Text(
//             'أهلاً بأطفالنا',
//             style: TextStyle(
//               color: Color.fromARGB(255, 230, 228, 228),
//               fontStyle: FontStyle.normal,
//             ),
//           ),
//         ),
//         backgroundColor: Colors.purple, // تغيير لون AppBar
//         leading: Image(image: AssetImage('assets/images/basma.png')),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               TextField(
//                 controller: _textEditingController,
//                 maxLines: 4,
//                 textAlign: TextAlign.right, // تعيين النص في اليمين
//                 decoration: InputDecoration(
//                   hintText: '... بماذا تفكر',
//                   border: OutlineInputBorder(),
//                   alignLabelWithHint: true, // توجيه النص مع التلميح
//                 ),
//               ),
//               SizedBox(height: 20),
//               Container(
//                 height: 200,
//                 color: const Color.fromARGB(255, 232, 230, 230),
//                 child: Stack(
//                   children: [
//                     if (_image != null)
//                       Positioned.fill(
//                         child: Image.file(
//                           _image!,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     IconButton(
//                       onPressed: _pickImage,
//                       icon: Icon(
//                         Icons.add_a_photo,
//                         color: Colors.purple,
//                       ),
//                     ),
//                   ],
//                 ),
//                 alignment: Alignment.center,
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {},
//                 child: Text('نشر'),
//                 style: ButtonStyle(
//                   backgroundColor: MaterialStateProperty.all<Color>(
//                       Colors.yellow), // تحديد لون الخلفية
//                   foregroundColor: MaterialStateProperty.all<Color>(
//                       Colors.purple), // تحديد لون النص
//                   textStyle: MaterialStateProperty.all<TextStyle>(
//                     TextStyle(fontSize: 20), // تحديد حجم النص
//                   ),
//                 ),
//               ),
//               Image(image: AssetImage('assets/images/thinking2.gif')),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }