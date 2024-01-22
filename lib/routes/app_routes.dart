import 'package:flutter/material.dart';
import 'package:pankaj_s_application6/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:pankaj_s_application6/presentation/registrationscreen_screen/registrationscreen_screen.dart';
import 'package:pankaj_s_application6/presentation/donationreqformscreen_screen/donationreqformscreen_screen.dart';
import 'package:pankaj_s_application6/presentation/adminportal_screen/adminportal_screen.dart';
import 'package:pankaj_s_application6/presentation/loginscreen_screen/loginscreen_screen.dart';
import 'package:pankaj_s_application6/presentation/userprofile_screen/userprofile_screen.dart';
import 'package:pankaj_s_application6/presentation/donationform_screen/donationform_screen.dart';
import 'package:pankaj_s_application6/presentation/donationlist_screen/donationlist_screen.dart';
import 'package:pankaj_s_application6/presentation/clothescaresearch_screen/clothescaresearch_screen.dart';
import 'package:pankaj_s_application6/presentation/feedbackform_screen/feedbackform_screen.dart';
import 'package:pankaj_s_application6/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String dashboardScreen = '/dashboard_screen';
  static const String registrationscreenScreen = '/registrationscreen_screen';

  static const String donationreqformscreenScreen =
      '/donationreqformscreen_screen';

  static const String adminportalScreen = '/adminportal_screen';

  static const String loginscreenScreen = '/loginscreen_screen';

  static const String userprofileScreen = '/userprofile_screen';

  static const String donationformScreen = '/donationform_screen';

  static const String donationlistScreen = '/donationlist_screen';

  static const String clothescaresearchScreen = '/clothescaresearch_screen';

  static const String feedbackformScreen = '/feedbackform_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    registrationscreenScreen: (context) => RegistrationscreenScreen(),
    donationreqformscreenScreen: (context) => DonationreqformscreenScreen(),
    adminportalScreen: (context) => AdminportalScreen(),
    loginscreenScreen: (context) => LoginscreenScreen(),
    userprofileScreen: (context) => UserprofileScreen(),
    donationformScreen: (context) => DonationformScreen(),
    donationlistScreen: (context) => DonationlistScreen(),
    dashboardScreen: (context) => DashboardScreen(),
    clothescaresearchScreen: (context) => ClothescaresearchScreen(),
    feedbackformScreen: (context) => FeedbackformScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
