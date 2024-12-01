import 'package:ca_tl/route/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(  //设置状态栏透明
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp(title: 'Demo',));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key, required this.title});
  final String title;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: ScreenUtilInit(
        builder: (context, child) {
          return MaterialApp(
            title: widget.title,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            onGenerateRoute: Routes.generateRoute,   //导入配置好的路由
            initialRoute: RouteName.home,   //设置初始路由路径(String)
          );
        },
      ),
    );
  }
}
