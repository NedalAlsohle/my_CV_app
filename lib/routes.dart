import 'package:flutter_application_2/core/constant/routes.dart';
import 'package:flutter_application_2/view/Certificates%20Courses/screens/certificates_courses.dart';
import 'package:flutter_application_2/view/Splash/splash_screen.dart';
import 'package:flutter_application_2/view/cv/screens/cv_screen.dart';
import 'package:flutter_application_2/view/experiences/screens/experiences.dart';
import 'package:flutter_application_2/view/why%20me/screens/why_me_sc.dart';
import 'package:flutter_application_2/view/educational%20level/educational_level.dart';
import 'package:flutter_application_2/view/personal%20information/screens/personal_information.dart';
import 'package:flutter_application_2/view/home/screens/home_screen.dart';
import 'package:flutter_application_2/view/widget/cards/screens/cards_view.dart';
import 'package:flutter_application_2/view/widget/move%20image/screen/move_image.dart';
import 'package:flutter_application_2/view/widget/random_color/random_coloc.dart';
import 'package:flutter_application_2/view/widget/scroll/screens/scroll_view.dart';
import 'package:get/get_navigation/get_navigation.dart';

// هون منحط خريطة التنقلات

List<GetPage<dynamic>>? routes = [
  GetPage(name: AppRouts.splash, page: () => const SplashScreen()),
  GetPage(name: AppRouts.home, page: () => const HomeScreen()),
  GetPage(name: AppRouts.whyme, page: () => WhyMeSc()),
  GetPage(
      name: AppRouts.personalInformation,
      page: () => const PersonalInformation()),

  GetPage(name: AppRouts.educational, page: () => const EducationalLevel()),
  GetPage(name: AppRouts.experiences, page: () => const Experiences()),
  GetPage(
      name: AppRouts.certificatescourses,
      page: () => const CertificatesCourses()),
  GetPage(name: AppRouts.cv, page: () => const CvScreen()),

  GetPage(name: AppRouts.cardsview, page: () => const CardsView()),
  GetPage(
      name: AppRouts.carouselcardswiper,
      page: () => const CarouselCardSwiper()),
  GetPage(name: AppRouts.moveimage, page: () => const MoveImage()),
  GetPage(name: AppRouts.randomcoloc, page: () => const RandomColoc()),
  // GetPage(name: AppRouts.home, page: () => HomeScreen()),
];
