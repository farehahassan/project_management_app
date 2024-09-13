import 'package:get/get.dart';
import 'dart:async';
import 'package:flutter/material.dart';

class OnboardingController extends GetxController {
  var currentPage = 0.obs;
  late PageController pageController;
  Timer? timer;

  @override
  void onInit() {
    pageController = PageController();
    _startAutoScroll();
    super.onInit();
  }

  void _startAutoScroll() {
    timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (currentPage.value < 2) {
        currentPage.value++;
      } else {
        currentPage.value = 0;
      }
      pageController.animateToPage(
        currentPage.value,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  // Cancel timer when user manually swipes
  void onPageChanged(int page) {
    currentPage.value = page;
    timer?.cancel();
    _startAutoScroll(); // Restart auto-scroll after user action
    print("Page changed to: $page"); // Add a log for troubleshooting
  }

  @override
  void onClose() {
    pageController.dispose();
    timer?.cancel();
    super.onClose();
  }
}
