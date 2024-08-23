import 'package:agrilibmm/core/common_widgets/m_app_bar.dart';
import 'package:agrilibmm/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/components/button/gf_button_bar.dart';
import 'package:getwidget/components/card/gf_card.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/getwidget.dart';

import '../controllers/training_controller.dart';

class TrainingView extends GetView<TrainingController> {
  const TrainingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mAppBar('Training'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // papaya
            GFCard(
              boxFit: BoxFit.cover,
              image: Image.network(
                  'https://myplantin.com/_next/image?url=https%3A%2F%2Fstrapi.myplantin.com%2Fwoman_with_papayas_on_the_plantation_2022_02_07_11_18_28_utc_min_6abde218d2.webp&w=1920&q=75'),
              title: GFListTile(
                avatar: GFAvatar(
                  backgroundImage: NetworkImage(
                      'https://myplantin.com/_next/image?url=https%3A%2F%2Fstrapi.myplantin.com%2Fwoman_with_papayas_on_the_plantation_2022_02_07_11_18_28_utc_min_6abde218d2.webp&w=1920&q=75'),
                ),
                title: Text(
                  'သဘော်စိုက်ပျိုးဝင်ငွေတိုး',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subTitle: Text(
                  'by Sr Wai - Fees: 10,000 MMK',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              content: Text(
                  "Some quick example text to build on the card.Some quick example text to build on the card.Some quick example text to build on the card.Some quick example text to build on the card.Some quick example text to build on the card."),
              buttonBar: GFButtonBar(
                children: <Widget>[
                  GFButton(
                    onPressed: () {},
                    text: 'အသေးစိပ်စုံစမ်းရန်',
                    color: mPrimaryColor,
                    shape: GFButtonShape.pills,
                  ),
                  GFButton(
                    onPressed: () {},
                    text: 'သင်တန်းတတ်ရန်',
                    color: mSecondaryColor,
                    shape: GFButtonShape.pills,
                  ),
                ],
              ),
            ),

            // banana
            GFCard(
              boxFit: BoxFit.cover,
              image: Image.network(
                  'https://myplantin.com/_next/image?url=https%3A%2F%2Fstrapi.myplantin.com%2Fwoman_with_papayas_on_the_plantation_2022_02_07_11_18_28_utc_min_6abde218d2.webp&w=1920&q=75'),
              title: GFListTile(
                avatar: GFAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.theconversation.com/files/227374/original/file-20180712-27021-7iamol.jpg?ixlib=rb-4.1.0&q=20&auto=format&w=320&fit=clip&dpr=2&usm=12&cs=strip'),
                ),
                title: Text(
                  'ငှက်ပျောစိုက်ပျိုး ဝင်ငွေတိုး',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subTitle: Text(
                  'by Sr Phyo - Fees: 5,000 MMK',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              content: Text(
                  "Some quick example text to build on the card.Some quick example text to build on the card.Some quick example text to build on the card.Some quick example text to build on the card.Some quick example text to build on the card."),
              buttonBar: GFButtonBar(
                children: <Widget>[
                  GFButton(
                    onPressed: () {},
                    text: 'အသေးစိပ်စုံစမ်းရန်',
                    color: mPrimaryColor,
                    shape: GFButtonShape.pills,
                  ),
                  GFButton(
                    onPressed: () {},
                    text: 'သင်တန်းတတ်ရန်',
                    color: mSecondaryColor,
                    shape: GFButtonShape.pills,
                  ),
                ],
              ),
            ),

            // mango
            GFCard(
              boxFit: BoxFit.cover,
              image: Image.network(
                  'https://media.istockphoto.com/id/1435602229/photo/close-up-of-red-mangoes.jpg?s=612x612&w=0&k=20&c=a2uO7Ly-irGjtfqZC0ZTt9ps_Sh8S3a6ulf-TMRebao='),
              title: GFListTile(
                avatar: GFAvatar(
                  backgroundImage: NetworkImage(
                      'https://media.istockphoto.com/id/1435602229/photo/close-up-of-red-mangoes.jpg?s=612x612&w=0&k=20&c=a2uO7Ly-irGjtfqZC0ZTt9ps_Sh8S3a6ulf-TMRebao='),
                ),
                title: Text(
                  'သရက်စိုက်ပျိုး ဝင်ငွေတိုး',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subTitle: Text(
                  'by Sr Xcode - Fees: 15,000 MMK',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              content: Text(
                  "Some quick example text to build on the card.Some quick example text to build on the card.Some quick example text to build on the card.Some quick example text to build on the card.Some quick example text to build on the card."),
              buttonBar: GFButtonBar(
                children: <Widget>[
                  GFButton(
                    onPressed: () {},
                    text: 'အသေးစိပ်စုံစမ်းရန်',
                    color: mPrimaryColor,
                    shape: GFButtonShape.pills,
                  ),
                  GFButton(
                    onPressed: () {},
                    text: 'သင်တန်းတတ်ရန်',
                    color: mSecondaryColor,
                    shape: GFButtonShape.pills,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
