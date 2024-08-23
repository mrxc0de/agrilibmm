
import 'package:agrilibmm/app/modules/book/controllers/book_controller.dart';
import 'package:agrilibmm/core/common_widgets/m_app_bar.dart';
import 'package:agrilibmm/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/bottom_sheet/gf_bottom_sheet.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';

Widget mBottomSheet(){
  var bookController = Get.put(BookController());
  return GFBottomSheet(
    controller: bookController.gfBottomSheetController,
    maxContentHeight: 150,
    stickyHeaderHeight: 100,
    // stickyHeader: Container(
    //   decoration: BoxDecoration(color: Colors.white,
    //       boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 0)]
    //   ),
    //   child: const GFListTile(
    //     avatar: GFAvatar(
    //       backgroundImage: AssetImage('assets image here'),
    //     ),
    //     titleText: 'GetWidget',
    //     subTitleText: 'Open source UI library',
    //   ),
    // ),
    contentBody: Container(
      height: 200,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: ListView(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        children: const [
          Center(
              child: Text(
                'Getwidget reduces your overall app development time to minimum 30% because of its pre-build clean UI widget that you can use in flutter app development. We have spent more than 1000+ hours to build this library to make flutter developer’s life easy.',
                style: TextStyle(
                    fontSize: 15, wordSpacing: 0.3, letterSpacing: 0.2),
              ))
        ],
      ),
    ),
    stickyFooter: Container(
      color: mSecondaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Get in touch',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          Text(
            'info@getwidget.dev',
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ],
      ),
    ),
    stickyFooterHeight: 50,
  );
}