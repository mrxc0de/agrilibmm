import 'package:get/get.dart';
import 'package:getwidget/components/bottom_sheet/gf_bottom_sheet.dart';

class BookController extends GetxController {
  //TODO: Implement BookController

  final count = 0.obs;
  var index = 0.obs;
  final GFBottomSheetController gfBottomSheetController = GFBottomSheetController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
