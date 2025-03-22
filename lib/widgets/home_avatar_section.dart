import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constant/routes.dart';
import 'package:flutter_application_2/widgets/custum_avatar.dart';
import 'package:get/get.dart';

class HomeAvatarSection extends StatelessWidget {
  const HomeAvatarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CustumAvatar(
            icon1: Icons.view_carousel_rounded,
            onTap: () => Get.toNamed(AppRouts.cardsview),
          ),
          CustumAvatar(
            icon1: Icons.change_circle,
            onTap: () => Get.toNamed(AppRouts.carouselcardswiper),
          ),
          CustumAvatar(
            icon1: Icons.image,
            onTap: () => Get.toNamed(AppRouts.moveimage),
          ),
          CustumAvatar(
            icon1: Icons.attach_file_sharp,
            onTap: () => Get.toNamed(AppRouts.randomcoloc),
          ),
          CustumAvatar(
            icon1: Icons.star,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
