import 'package:agrilibmm/app/modules/book/controllers/book_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/appbar/gf_appbar.dart';
import 'package:getwidget/components/badge/gf_badge.dart';
import 'package:getwidget/components/button/gf_icon_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:getwidget/types/gf_button_type.dart';

PreferredSizeWidget mAppBar(title){
  var bookController = Get.put(BookController());
  return GFAppBar(
        title: Text('${title}'),
        leading: Image.asset('assets/logos/logo.jpg'),
        actions: <Widget>[
          GFIconButton(
            icon: Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
            onPressed: () {
              // Get.snackbar('title', 'hi there');
              bookController.gfBottomSheetController.isBottomSheetOpened
              ? bookController.gfBottomSheetController.hideBottomSheet()
              : bookController.gfBottomSheetController.showBottomSheet();
            },
            type: GFButtonType.transparent,
          ),

        ],
      );
}