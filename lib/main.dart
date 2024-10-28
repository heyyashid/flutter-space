import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sample/02-10-24-task/profile.dart';
import 'package:sample/03-10-24-task/bus_booking.dart';
import 'package:sample/03-10-24-task/confirmpage.dart';
import 'package:sample/03-10-24-task/homepage.dart';
import 'package:sample/09-10-24-task/shared_preference.dart';
import 'package:sample/10-10-24-whatsapp/bottom_bar.dart';
import 'package:sample/10-10-24-whatsapp/calls.dart';
import 'package:sample/10-10-24-whatsapp/home.dart';
import 'package:sample/10-10-24-whatsapp/status.dart';
import 'package:sample/17-09-24_task/chessboard.dart';
import 'package:sample/30-09-24-task/firstpage.dart';
import 'package:sample/27-09-24-task/home.dart';
import 'package:sample/27-09-24-task/login.dart';
import 'package:sample/30-09-24-task/secondpage.dart';
import 'package:sample/alertdialog.dart';
import 'package:sample/getx/user_mng.dart';
import 'package:sample/navigation/home.dart';
import 'package:sample/navigation/screen-a.dart';
import 'package:sample/navigation/screen-b.dart';
import 'package:sample/container.dart';
import 'package:sample/image.dart';
import 'package:sample/19-09-24_task/login.dart';
import 'package:sample/product_api/hompage.dart';
import 'package:sample/provider/provider_class.dart';
import 'package:sample/provider/user_management.dart';

void main() {
  runApp( ChangeNotifierProvider(
    create: (context)=> UserProvider(),
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    //   routes: {
    //    "busbooking" :(context )=>BookingPage(),
    //   "confirmpage" :(context )=>ConfirmPage(),
    // "homepage":(context)=>HomePage1()
    //  },
    //  initialRoute: "homepage",
      
      home:Product_ui(),
    );
  }
}

