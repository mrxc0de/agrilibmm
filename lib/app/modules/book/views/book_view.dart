import 'package:agrilibmm/core/common_widgets/m_app_bar.dart';
import 'package:agrilibmm/core/common_widgets/m_bottom_sheet.dart';
import 'package:agrilibmm/core/utils/constants/text_style.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

import '../controllers/book_controller.dart';

class BookView extends GetView<BookController> {
  BookView({super.key});

  final List<String> imageList = [
    'https://www.bhg.com/thmb/oDnjlrHprd67aYvinrMfQgVUPtQ=/5332x0/filters:no_upscale():strip_icc()/BHG-spider-plant-c0e0fdd5ec6e4c1588998ce3167f6579.jpg',
    'https://www.realsimple.com/thmb/Wfcx19y6fCJbGuQoXzoJB3gAecI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1345463551-4ab50ed56e9c433c9d6571d7e51707cf.jpg',
    'https://media.cnn.com/api/v1/images/stellar/prod/the-sill-df-lead-image-00.jpg?c=16x9',
    'https://hips.hearstapps.com/hmg-prod/images/a-set-of-colorful-potted-plants-on-a-patterned-area-royalty-free-image-1716493110.jpg?crop=1xw:0.84296xh;center,top&resize=1200:*',
    'https://images.ctfassets.net/3s5io6mnxfqz/7r5HZayLB3VQyTrMuv4kFb/a7e269478fb1072e5fd0ebee7232892b/AdobeStock_269831359.jpeg',
    'https://earthsally.com/wp-content/uploads/2021/12/4-spider-plant-1024x512.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mAppBar('AgriLibMM'),
      bottomSheet: mBottomSheet(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GFCarousel(
              autoPlay: true,
              items: imageList.map(
                (url) {
                  return Container(
                    margin: EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      child:
                          Image.network(url, fit: BoxFit.cover, width: 1000.0),
                    ),
                  );
                },
              ).toList(),
              onPageChanged: (index) {
                controller.index.value = index;
              },
            ),
            SizedBox(
              height: 16,
            ),
            // book kinds
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'စာအုပ်အမျိုးအစားများ',
                    style: mTitle(),
                  ),
                  Icon(Icons.arrow_right),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              width: double.infinity,
              height: 170,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.5,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemCount: 15, // Set the number of items to display
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Colors.grey[200],
                    ),
                    child: Center(
                      child: Text('Item $index'),
                    ),
                  );
                },
              ),
            ),

            SizedBox(
              height: 36,
            ),

            // new books
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'အသစ်ထွက်စာအုပ်များ',
                    style: mTitle(),
                  ),
                  Icon(Icons.arrow_right),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              width: double.infinity,
              height: 170,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 1.5,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemCount: 15, // Set the number of items to display
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Colors.grey[200],
                    ),
                    child: Center(
                      child: Text('Item $index'),
                    ),
                  );
                },
              ),
            ),

            SizedBox(
              height: 36,
            ),

            // collections
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'စုစည်းမှုများ',
                    style: mTitle(),
                  ),
                  Icon(Icons.arrow_right),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              width: double.infinity,
              height: 130,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 0.5,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemCount: 15, // Set the number of items to display
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Colors.grey[200],
                    ),
                    child: Center(
                      child: Text('Item $index'),
                    ),
                  );
                },
              ),
            ),

            SizedBox(
              height: 36,
            ),

            // popular books
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'လူကြိုက်အများဆုံးစာအုပ်များ',
                    style: mTitle(),
                  ),
                  Icon(Icons.arrow_right),
                ],
              ),
            ),

            SizedBox(
              height: 12,
            ),
            Container(
              width: double.infinity,
              height: 170,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 1.5,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemCount: 15, // Set the number of items to display
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Colors.grey[200],
                    ),
                    child: Center(
                      child: Text('Item $index'),
                    ),
                  );
                },
              ),
            ),

            SizedBox(
              height: 36,
            ),

            // randon books
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'ကျပန်းစာအုပ်စု့',
                    style: mTitle(),
                  ),
                  Icon(Icons.arrow_right),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 12),
              height: 1000,
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.77,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemCount: 15, // Set the number of items to display
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Colors.grey[200],
                    ),
                    child: Center(
                      child: Text('Item $index'),
                    ),
                  );
                },
              ),
            ),

            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
