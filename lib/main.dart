// import 'package:flutter/material.dart';
// import 'package:gradle/view/add_post_view.dart';
// import 'package:gradle/view/home_page_view.dart';

// void main()
//  {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//       return MaterialApp(
//         home: HomePageView(),
//         routes: {

//              '/add_post_view':(context)=>add_post_view(),
//         },
//         debugShowCheckedModeBanner: false,

//       );

//   }

// }

// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:gradle/helper/constant.dart';
// import 'package:gradle/view/add_post_view.dart';
// import 'package:gradle/view/classes_view.dart';
// import 'package:gradle/view/home_page_view.dart';
// import 'package:gradle/view/posts_view.dart';
// import 'package:gradle/view/profile_view.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//       routes: {
//         '/add_post_view': (context) => add_post_view(),
//       },
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//     int _selectedIndex = 1;

//   Color _getSelectedColor(int index) {
//     switch (index) {
//       case 0:
//         // return yellow2;
//         return green2;
//       case 1:
//         return Purple2;
//       case 2:
//         return blue2;
//       default:
//         return Colors.black; // الافتراضي
//     }
//   }

//   final List<Widget> _pages = [
//     ClassesView(),
//     PostsView(),

//     ProfileView(),
//     // Add more pages here
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//        appBar: AppBar(
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: Icon(
//               Icons.chat,
//               color: Color.fromARGB(255, 201, 200, 200),
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
//         backgroundColor: _getSelectedColor(_selectedIndex), // تغيير لون AppBar
//         leading: Image(image: AssetImage('assets/images/basma.png')),
//       ),

//       body: _pages[_selectedIndex],
//      bottomNavigationBar: CurvedNavigationBar( // استخدام CurvedNavigationBar بدلاً من BottomNavigationBar
//         items: const <Widget>[
//           Icon(Icons.school,color:const Color.fromARGB(255, 232, 213, 128) ,),
//           Icon(Icons.home,color:const Color.fromARGB(255, 232, 213, 128)),
//           Icon(Icons.person,color:const Color.fromARGB(255, 232, 213, 128)),
//         ],
//         index: _selectedIndex,
//         height: 50,
//         color: _getSelectedColor(_selectedIndex), // تغيير لون الـ CurvedNavigationBar
//         backgroundColor: Colors.transparent,
//         buttonBackgroundColor: _getSelectedColor(_selectedIndex), // تغيير لون الـ CurvedNavigationBar
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }

import 'package:child_basma/helper/constant.dart';
import 'package:child_basma/view/add_post_view.dart';
import 'package:child_basma/view/classes_view.dart';
import 'package:child_basma/view/lessons_view.dart';
import 'package:child_basma/view/Login/login_view.dart';
import 'package:child_basma/view/posts_view.dart';
import 'package:child_basma/view/profile_view.dart';
import 'package:child_basma/view/subjects_view.dart';
import 'package:child_basma/view/videos_view.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginView(),
      routes: {
        '/add_post_view': (context) => add_post_view(),
        '/posts_view': (context) => PostsView(),
        //  '/home_page_view': (context) => HomePageView(),
        '/main': (context) => MyHomePage(),
        '/subjects_view': (context) => SubjectsView(),
        '/lessons_view': (context) => LessonsView(),
                '/videos_view': (context) => VideosView(),

      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 1;

  Color _getSelectedColor(int index) {
    switch (index) {
      case 0:
        return green2;
      case 1:
        return Purple2;
      case 2:
        return blue2;
      default:
        return Colors.black; // الافتراضي
    }
  }

  String _getSelectedTitle(int index) {
    return _titles[index];
  }

  static const List<String> _titles = <String>[
    'مدرسة بسمة',
    'مجتمع بسمة',
    'حسابي',
  ];

  final List<Widget> _pages = [
    ClassesView(),
    PostsView(),
    ProfileView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 1,
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
          child: Text(
            _getSelectedTitle(_selectedIndex),
            style: TextStyle(
              color: yellow,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        backgroundColor: _getSelectedColor(_selectedIndex), // تغيير لون AppBar
        leading: Image(image: AssetImage('assets/images/basma.png')),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        // استخدام CurvedNavigationBar بدلاً من BottomNavigationBar
        items: const <Widget>[
          Icon(Icons.school, color: const Color.fromARGB(255, 232, 213, 128)),
          Icon(Icons.home, color: const Color.fromARGB(255, 232, 213, 128)),
          Icon(Icons.person, color: const Color.fromARGB(255, 232, 213, 128)),
        ],
        index: _selectedIndex,
        height: 50,
        color: _getSelectedColor(
            _selectedIndex), // تغيير لون الـ CurvedNavigationBar
        backgroundColor: Colors.transparent,

        buttonBackgroundColor: _getSelectedColor(
            _selectedIndex), // تغيير لون الـ CurvedNavigationBar
        onTap: _onItemTapped,
      ),
    );
  }
}
