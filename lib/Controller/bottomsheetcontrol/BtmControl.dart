import 'package:auxzonapp/View/Screen2/Screen2.dart';
import 'package:auxzonapp/utils/bottomsheet/cart.dart';
import 'package:auxzonapp/utils/bottomsheet/profile.dart';
import 'package:auxzonapp/utils/bottomsheet/search.dart';
import 'package:auxzonapp/utils/bottomsheet/wishlist.dart';
import 'package:get/get.dart';

class BttmControl extends GetxController {
  var search = false.obs;
  var wishlist = false.obs;
  var home = false.obs;
  var cart = false.obs;
  var profile = false.obs;
  navigatetosearch() {
    search.value = true;
    wishlist.value = false;
    home.value = false;
    cart.value = false;
    profile.value = false;
    Get.to(() => Searchsc());
  }

  navigatetowishlist() {
    search.value = false;
    wishlist.value = true;
    home.value = false;
    cart.value = false;
    profile.value = false;
    Get.to(() => WishlstScreen());
  }

  navigatetohome() {
    search.value = false;
    wishlist.value = false;
    home.value = true;
    cart.value = false;
    profile.value = false;
    Get.to((() => Screen2()));
  }

  navigatetocart() {
    search.value = false;
    wishlist.value = false;
    home.value = false;
    cart.value = true;
    profile.value = false;
    Get.to(() => Cartsc());
  }

  navigatetoprofile() {
    search.value = false;
    wishlist.value = false;
    home.value = false;
    cart.value = false;
    profile.value = true;
    Get.to(() => Profilesc());
  }

  @override
  void onInit() {
    navigatetohome();
    // TODO: implement onInit
    super.onInit();
  }
}
