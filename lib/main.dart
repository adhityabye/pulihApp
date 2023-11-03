// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'common/routes/pages.dart';
// import 'common/values/colors.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//         providers: [...AppPages.allBlocProviders(context)],
//         child: ScreenUtilInit(
//             designSize: const Size(375, 812),
//             builder: (context, child) => MaterialApp(
//                   debugShowCheckedModeBanner: false,
//                   theme: ThemeData(
//                       appBarTheme: const AppBarTheme(
//                           iconTheme:
//                               IconThemeData(color: AppColors.primaryText),
//                           elevation: 0,
//                           backgroundColor: Colors.white,
//                           centerTitle: true)),
//                   onGenerateRoute: AppPages.GenerateRouteSettings,
//                 )));
//   }
// }

import 'package:flutter/widgets.dart';
import 'package:pulih_app/app.dart';

void main() => runApp(const App());
