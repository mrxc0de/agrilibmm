import 'package:agrilibmm/core/common_widgets/m_app_bar.dart';
import 'package:agrilibmm/core/utils/constants/colors.dart';
import 'package:agrilibmm/core/utils/constants/text_style.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mAppBar('Profile'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9.0),
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),
              // Profile name section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            GFAvatar(
                              backgroundImage: NetworkImage(
                                  'https://avatars.githubusercontent.com/u/172459606?s=400&u=3579387ec10a3d7e25ea4fa5b905cc4310152a2d&v=4'),
                              shape: GFAvatarShape.circle,
                              size: 63,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        // Text Column
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Mr Xcode'),
                            Text('ID: M0o7fv'),
                            GFButton(
                              onPressed: () {},
                              text: 'အခမဲ့ သုံးစွဲသူ',
                              textStyle: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                              shape: GFButtonShape.pills,
                              color: mAccentOneColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // profile image section

                  Column(
                    children: [
                      Icon(Icons.arrow_right),
                    ],
                  ),
                ],
              ),

              // make donation section
              GFCard(
                boxFit: BoxFit.cover,
                image: Image.asset('your asset image'),
                title: GFListTile(
                  avatar: GFAvatar(
                    backgroundImage: NetworkImage(
                        'https://img.freepik.com/free-vector/hand-drawn-flat-design-stack-books_23-2149342941.jpg'),
                  ),
                  title: Text('Buy Premium'),
                  subTitle: Text('အကန့်အသတ်မဲ့ သုံးစွဲသူ'),
                ),
                content: Text(
                    "အကန့်သတ်မဲ့ စာအုပ်များ ဒေါင်းလုဒ်ရယူဖို့နဲ့ အကြံပေးဝန်ဆောင်မှု ရယူရန်!"),
                buttonBar: GFButtonBar(
                  children: <Widget>[
                    GFButton(
                      onPressed: () {},
                      text: '1 Month',
                      shape: GFButtonShape.pills,
                      color: mPrimaryColor,
                    ),
                    GFButton(
                      onPressed: () {},
                      text: '3 Months',
                      shape: GFButtonShape.pills,
                      color: mPrimaryColor,
                    ),
                  ],
                ),
              ),

              // read book section
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.book),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          '0',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'ဖတ်ပြီးသော',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'စာအုပ်အရေအတွက်',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    VerticalDivider(
                      color: Colors.grey,
                      thickness: 1.0,
                      width: 20.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.calendar_month),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          '0',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          'ဆက်တိုက်ဖတ်ထားသော',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'နေ့ရက်များ',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // referal section
              SizedBox(
                height: 19,
              ),
              Container(
                width: double.infinity,
                height: 170,
                padding: EdgeInsets.all(9.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  border: Border.all(),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'သူငယ်ချင်းများနဲ့အတူ စာဖတ်မယ်။',
                              style: mTitle(),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              'သူငယ်ချင်းတစ်ယောက်ကိုညွန်းတိုင်း \nPremium Subscription တစ်လစာ \nရယူပါ',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.network(
                              'https://m.media-amazon.com/images/I/71NAGPZug1L.jpg',
                              width: 100,
                              height: 100,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        GFButton(
                          onPressed: () {},
                          shape: GFButtonShape.pills,
                          text: 'ဖိတ်ခေါ်ပြီး တစ်လစာ ရယူမယ်',
                          blockButton: true,
                          color: mPrimaryColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
