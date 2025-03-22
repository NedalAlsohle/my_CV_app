import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageGrid extends StatelessWidget {
  final List<String> imagePaths = [
    "assets/images/certificate.png",
    'assets/images/z .png',
    'assets/images/z  Dart Using Functions with Lists and Maps.png',
    'assets/images/z  Dart Variables, Data Structures, Objects, and  Conditionals.png',
    'assets/images/z Dart Functions Framework.png',
    'assets/images/z  z dart Introducing Class Abstraction.png',
    'assets/images/z  Introduction to Dart.png',
    'assets/images/z  Effective Problem-Solving and Decision-Making.png',
    'assets/images/z  Foundations of User Experience (UX) Design.png',
    'assets/images/z  IELTS Reading Section Skills Mastery.png',
    'assets/images/z  Problem Solving Using Computational Thinking.png',
    'assets/images/z  Start the UX Design Process Empathize, Define,  and Ideate.png',
    'assets/images/z  Write Professional Emails in English.png',
    'assets/images/z  Digital Content Planning and Management.png',
    'assets/images/z Critical Thinking Skills for the Professional.png',
  ];

  ImageGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
      ),
      itemCount: imagePaths.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => Get.to(
            () => FullScreenImage(imagePath: imagePaths[index]),
            transition: Transition.fadeIn,
            duration: const Duration(milliseconds: 300),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Hero(
              tag: imagePaths[index],
              child: Image.asset(
                imagePaths[index],
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        );
      },
    );
  }
}

class FullScreenImage extends StatelessWidget {
  final String imagePath;

  const FullScreenImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: Get.back,
        child: InteractiveViewer(
          panEnabled: true,
          minScale: 0.1,
          maxScale: 4.0,
          boundaryMargin: const EdgeInsets.all(0),
          child: Center(
            child: Hero(
              tag: imagePath,
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
