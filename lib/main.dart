import 'package:flutter/material.dart';
import 'package:khadok_application_8/ui/chinese_image_.dart';
import 'package:khadok_application_8/ui/codecando.dart';
import 'package:khadok_application_8/ui/dhaka_food.dart';
import 'package:khadok_application_8/ui/food_zone.dart';
import 'package:khadok_application_8/ui/frego.dart';
import 'package:khadok_application_8/ui/green_chili.dart';
import 'package:khadok_application_8/ui/hello.dart';
import 'package:khadok_application_8/ui/home.dart';
import 'package:khadok_application_8/ui/hungry.dart';
import 'package:khadok_application_8/ui/image_view.dart';
import 'package:khadok_application_8/ui/information_bangla.dart';
import 'package:khadok_application_8/ui/information_chinese.dart';
import 'package:khadok_application_8/ui/jomor_information.dart';
import 'package:khadok_application_8/ui/kari_information.dart';
import 'package:khadok_application_8/ui/nobabi_vhoj.dart';
import 'package:khadok_application_8/ui/noumi.dart';
import 'package:khadok_application_8/ui/raduni_information.dart';
import 'package:khadok_application_8/ui/route.dart';
import 'package:khadok_application_8/ui/silver_fork.dart';
import 'package:khadok_application_8/ui/web_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        // home: HomePage(),
        initialRoute: AppRoute.homePage,
        routes: <String, WidgetBuilder>{
          AppRoute.homePage: (context) => HomePage(),
          AppRoute.informationbangla: (context) => InformationBangla(),
          AppRoute.informationchinese: (context) => InformationChinese(),
          AppRoute.codecando: (context) => CodeCanDoView(),
          AppRoute.restaurantinformation: (context) => RestaurantInformation(),
          AppRoute.imageview: (context) => ImageView(),
          AppRoute.kiariinformation: (context) => KariInformation(),
          AppRoute.raduniinformation: (context) => RaduniInformation(),
          AppRoute.geenciliinformation: (context) => GeenCiliInformation(),
          AppRoute.noumiinformation: (context) => NoumiInformation(),
          AppRoute.nobabiinformation: (context) => NobabiInformation(),
          AppRoute.hungryinformation: (context) => HungryInformation(),
          AppRoute.silverforkinformation: (context) => SilverForkInformation(),
          AppRoute.dhakafoodinformation: (context) => DhakaFoodInformation(),
          AppRoute.helloinformation: (context) => HelloInformation(),
          AppRoute.fregoinformation: (context) => FregoInformation(),
          AppRoute.foodzoneinformation: (context) => FoodZoneInformation(),
          AppRoute.webpage: (context) => WebPage(),
          AppRoute.webviewpage: (context) => WebViewPage(),
          AppRoute.raduniwebview: (context) => RadhuniWebView(),
          AppRoute.greenwebview: (context) => GreenWebView(),
          AppRoute.noumiwebview: (context) => NoumiWebView(),
          AppRoute.nobabiwebview: (context) => NobabiWebView(),
          AppRoute.hungrywebview: (context) => HungryWebView(),
          AppRoute.silverwebview: (context) => SilverWebView(),
          AppRoute.dhakawebview: (context) => DhakaWebView(),
          AppRoute.hellowebview: (context) => HelloWebView(),
          AppRoute.foodwebview: (context) => FoodWebView(),
          AppRoute.fregowebview: (context) => FregoWebView(),
          // AppRoute.singin: (context) => SingIn(),
          // AppRoute.singuppage: (context) => SignUpPage(),
          AppRoute.kariimageview: (context) => KariImageView(),
          AppRoute.radhuniimageview: (context) => RadhuniImageView(),
          AppRoute.greenimageview: (context) => GreenImageView(),
          AppRoute.noumiimageview: (context) => NoumiImageView(),
          AppRoute.nobabiimageview: (context) => NobabiImageView(),
          AppRoute.hungryimageview: (context) => HungryImageView(),
          AppRoute.silverimageview: (context) => SilverImageView(),
          AppRoute.dhakaimageview: (context) => DhakaImageView(),
          AppRoute.helloimageview: (context) => HelloImageView(),
          AppRoute.fregoimageview: (context) => FregoImageView(),
          AppRoute.foodimageview: (context) => FoodImageView(),
          // AppRoute.signin: (context) => SignIn(),
          // AppRoute.signup: (context) => SignUp()
        });
  }
}

class FREGOInformation {}
