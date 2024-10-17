import 'dart:ui';

import 'package:get/get.dart';

class MainScreenController extends GetxController {
  Rx<int> selected = 0.obs;
  Rx<String> curr2 = "".obs;
  Rx<String> curr = "".obs;
  final servicesHere = ["Cleaning","Repairing","Painting","Laundry","Appliance","Plumbing","Shifting","Beauty","Auto Service","Pandit"];
  final assetPath = ["cleaning","repairing","painting","laundry","appliance","plumbing","shifting","beauty","autoService","pandit"];
  final colorList = [const Color(0xffD7E0FF),Color(0xffFFE4C4),Color(0xffE5D0FF),Color(0xffFFEFB0),Color(0xffBDFFC8),Color(0xffFFC8F6),Color(0xffC6FFCF),Color(0xffA6A9FF),Color(0xff89B8A4),Color(0xffFFB6B6)];
  Rx<int> count = 10.obs;
  final Map<String,List<String>> mainServiceAsset = {
    "Cleaning" : ["BathroomCleaning","Kitchen Cleaning","Full Home Cleaning","","","",""],

  };
}