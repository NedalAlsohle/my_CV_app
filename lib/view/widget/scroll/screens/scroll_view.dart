import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constant/color.dart';
import 'package:flutter_application_2/core/constant/custum_alltext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CarouselCardSwiper extends StatelessWidget {
  const CarouselCardSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> cardList = [
      const CardItem(text: "Card 1", color: Colors.blue),
      const CardItem(text: "Card 2", color: Colors.red),
      const CardItem(text: "Card 3", color: Colors.green),
      const CardItem(text: "Card 4", color: Colors.orange),
      const CardItem(text: "Card 5", color: Colors.purple),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.darkcolor,
        title: const Text(
          Alltext.Text50,
          style: TextStyle(color: AppColor.white),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColor.sidecolor,
            size: 30,
          ),
        ),
      ),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 400.h,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 500),
            viewportFraction: 0.8,
          ),
          items: cardList,
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String text;
  final Color color;

  const CardItem({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 20.0, color: AppColor.white),
        ),
      ),
    );
  }
}
