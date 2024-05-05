import 'package:child_basma/helper/constant.dart';
import 'package:child_basma/view/classes_view.dart';
import 'package:flutter/material.dart';





List<String> videos = [
  'assets/1.mp4',
  'assets/1.mp4',
  // Add more video paths as needed
];

class VideosView extends StatelessWidget {
  const VideosView({super.key});

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



     Expanded(
            child: ListView.builder(
              itemCount: videos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Video ${index + 1}'),
                  onTap: () {
                    // Implement action when video is tapped
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

