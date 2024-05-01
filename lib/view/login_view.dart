
import 'package:child_basma/helper/constant.dart';
import 'package:child_basma/view/classes_view.dart';
import 'package:flutter/material.dart';


class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:Purple4, // لون خلفية الشاشة
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipPath(
                    clipper: TsClip2(),
                    child: Container(
                      color: Purple3,
                      height: 250,
                    ),
                  ),
                  Image.asset('assets/images/basma.png',
                      width: 150, height: 150),
                ],
              ),
              Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // شعار التطبيق (يمكنك استبداله بصورة أو رمز)
                      // Image.asset('assets/images/basma.png',
                      //     width: 100, height: 100),

                      SizedBox(height: 10),

                      // حقل إدخال اسم المستخدم
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          // fillColor: Colors.transparent,
                          fillColor: blue,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                            //  borderSide: BorderSide(
                            //   color: yellow, // لون خط الحدود
                            //   width: 2, // سمك خط الحدود
                            //   style: BorderStyle.solid, // نمط خط الحدود
                            // ),
                          ),
                          labelText: 'اسم المستخدم',
                          labelStyle: TextStyle(
                            color: yellow,
                            fontWeight: FontWeight.bold,
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: yellow,
                          ),
                        ),
                      ),

                      SizedBox(height: 20),

                      // حقل إدخال كلمة المرور
                      TextField(
                        obscureText: true, // إخفاء كلمة المرور
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: yellow,
                          // fillColor: Colors.transparent,

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                            // borderSide: BorderSide(
                            //   color: yellow, // لون خط الحدود
                            //   width: 2, // سمك خط الحدود
                            //   style: BorderStyle.solid, // نمط خط الحدود
                            // ),
                          ),
                          labelText: 'كلمة المرور',
                          labelStyle: TextStyle(
                            color: green,
                            fontWeight: FontWeight.bold,
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: green,
                          ),
                        ),
                      ),

                      SizedBox(height: 20),

                      Stack(
                        children: [
                          Image.asset(
                            'assets/images/hello.png',
                            height: 300,
                            width: 300,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 200,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // قم بإضافة وظيفة تسجيل الدخول هنا
                                  Navigator.of(context).pushNamed('/main');
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: green,
                                  minimumSize: Size(200, 50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Text('تسجيل الدخول'),
                              ),
                            ],
                          ),
                          // زر تسجيل الدخول
                        ],
                      ),
                      // Image.asset('assets/images/hello.png',height: 200,width: 200,),
                      //         // زر تسجيل الدخول
                      //         ElevatedButton(
                      //           onPressed: () {
                      //             // قم بإضافة وظيفة تسجيل الدخول هنا
                      //           },
                      //           style: ElevatedButton.styleFrom(
                      //             foregroundColor: Colors.white, backgroundColor: yellow,
                      //             minimumSize: Size(200, 50),
                      //             shape: RoundedRectangleBorder(
                      //               borderRadius: BorderRadius.circular(20),
                      //             ),
                      //           ),
                      //           child: Text('تسجيل الدخول'),
                      //         ),

                      SizedBox(height: 20),

                      // رابط لاستعادة كلمة المرور
                      TextButton(
                        onPressed: () {
                          // قم بإضافة وظيفة استعادة كلمة المرور هنا
                        },
                        child: Text(
                          'هل نسيت كلمة مرورك؟',
                          style: TextStyle(
                            color: Purple,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
