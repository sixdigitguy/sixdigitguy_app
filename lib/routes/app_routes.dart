import 'package:sixdigitguy_app/presentation/launch_screen/launch_screen.dart';
import 'package:sixdigitguy_app/presentation/launch_screen/binding/launch_binding.dart';
import 'package:sixdigitguy_app/presentation/signup_screen/signup_screen.dart';
import 'package:sixdigitguy_app/presentation/signup_screen/binding/signup_binding.dart';
import 'package:sixdigitguy_app/presentation/sign_option_screen/sign_option_screen.dart';
import 'package:sixdigitguy_app/presentation/sign_option_screen/binding/sign_option_binding.dart';
import 'package:sixdigitguy_app/presentation/signin_screen/signin_screen.dart';
import 'package:sixdigitguy_app/presentation/signin_screen/binding/signin_binding.dart';
import 'package:sixdigitguy_app/presentation/profile_page_screen/profile_page_screen.dart';
import 'package:sixdigitguy_app/presentation/profile_page_screen/binding/profile_page_binding.dart';
import 'package:sixdigitguy_app/presentation/homepage_screen/homepage_screen.dart';
import 'package:sixdigitguy_app/presentation/homepage_screen/binding/homepage_binding.dart';
import 'package:sixdigitguy_app/presentation/library_screen/library_screen.dart';
import 'package:sixdigitguy_app/presentation/library_screen/binding/library_binding.dart';
import 'package:sixdigitguy_app/presentation/updates_screen/updates_screen.dart';
import 'package:sixdigitguy_app/presentation/updates_screen/binding/updates_binding.dart';
import 'package:sixdigitguy_app/presentation/more_screen/more_screen.dart';
import 'package:sixdigitguy_app/presentation/more_screen/binding/more_binding.dart';
import 'package:sixdigitguy_app/presentation/language_screen/language_screen.dart';
import 'package:sixdigitguy_app/presentation/language_screen/binding/language_binding.dart';
import 'package:sixdigitguy_app/presentation/themes_screen/themes_screen.dart';
import 'package:sixdigitguy_app/presentation/themes_screen/binding/themes_binding.dart';
import 'package:sixdigitguy_app/presentation/security_screen/security_screen.dart';
import 'package:sixdigitguy_app/presentation/security_screen/binding/security_binding.dart';
import 'package:sixdigitguy_app/presentation/downloads_screen/downloads_screen.dart';
import 'package:sixdigitguy_app/presentation/downloads_screen/binding/downloads_binding.dart';
import 'package:sixdigitguy_app/presentation/about_screen/about_screen.dart';
import 'package:sixdigitguy_app/presentation/about_screen/binding/about_binding.dart';
import 'package:sixdigitguy_app/presentation/help_screen/help_screen.dart';
import 'package:sixdigitguy_app/presentation/help_screen/binding/help_binding.dart';
import 'package:sixdigitguy_app/presentation/filter_tags_screen/filter_tags_screen.dart';
import 'package:sixdigitguy_app/presentation/filter_tags_screen/binding/filter_tags_binding.dart';
import 'package:sixdigitguy_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:sixdigitguy_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String launchScreen = '/launch_screen';

  static const String signupScreen = '/signup_screen';

  static const String signOptionScreen = '/sign_option_screen';

  static const String signinScreen = '/signin_screen';

  static const String profilePageScreen = '/profile_page_screen';

  static const String homepageScreen = '/homepage_screen';

  static const String libraryScreen = '/library_screen';

  static const String updatesScreen = '/updates_screen';

  static const String moreScreen = '/more_screen';

  static const String languageScreen = '/language_screen';

  static const String themesScreen = '/themes_screen';

  static const String securityScreen = '/security_screen';

  static const String downloadsScreen = '/downloads_screen';

  static const String aboutScreen = '/about_screen';

  static const String helpScreen = '/help_screen';

  static const String filterTagsScreen = '/filter_tags_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: launchScreen,
      page: () => LaunchScreen(),
      bindings: [
        LaunchBinding(),
      ],
    ),
    GetPage(
      name: signupScreen,
      page: () => SignupScreen(),
      bindings: [
        SignupBinding(),
      ],
    ),
    GetPage(
      name: signOptionScreen,
      page: () => SignOptionScreen(),
      bindings: [
        SignOptionBinding(),
      ],
    ),
    GetPage(
      name: signinScreen,
      page: () => SigninScreen(),
      bindings: [
        SigninBinding(),
      ],
    ),
    GetPage(
      name: profilePageScreen,
      page: () => ProfilePageScreen(),
      bindings: [
        ProfilePageBinding(),
      ],
    ),
    GetPage(
      name: homepageScreen,
      page: () => HomepageScreen(),
      bindings: [
        HomepageBinding(),
      ],
    ),
    GetPage(
      name: libraryScreen,
      page: () => LibraryScreen(),
      bindings: [
        LibraryBinding(),
      ],
    ),
    GetPage(
      name: updatesScreen,
      page: () => UpdatesScreen(),
      bindings: [
        UpdatesBinding(),
      ],
    ),
    GetPage(
      name: moreScreen,
      page: () => MoreScreen(),
      bindings: [
        MoreBinding(),
      ],
    ),
    GetPage(
      name: languageScreen,
      page: () => LanguageScreen(),
      bindings: [
        LanguageBinding(),
      ],
    ),
    GetPage(
      name: themesScreen,
      page: () => ThemesScreen(),
      bindings: [
        ThemesBinding(),
      ],
    ),
    GetPage(
      name: securityScreen,
      page: () => SecurityScreen(),
      bindings: [
        SecurityBinding(),
      ],
    ),
    GetPage(
      name: downloadsScreen,
      page: () => DownloadsScreen(),
      bindings: [
        DownloadsBinding(),
      ],
    ),
    GetPage(
      name: aboutScreen,
      page: () => AboutScreen(),
      bindings: [
        AboutBinding(),
      ],
    ),
    GetPage(
      name: helpScreen,
      page: () => HelpScreen(),
      bindings: [
        HelpBinding(),
      ],
    ),
    GetPage(
      name: filterTagsScreen,
      page: () => FilterTagsScreen(),
      bindings: [
        FilterTagsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LaunchScreen(),
      bindings: [
        LaunchBinding(),
      ],
    )
  ];
}
