import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  PageController pageController = PageController();

  void goToWorkspace(int page) => pageController.jumpToPage(page);
}
