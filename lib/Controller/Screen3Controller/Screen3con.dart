import 'package:get/get.dart';

class Screen3cont extends GetxController {
  var count = 0.obs;
  incresecount() {
    if (count.value >= 0) {
      count.value += 1;
    }
  }

  decreaseecount() {
    if (count.value - 1 >= 0) {
      count.value -= 1;
    }
  }
}
