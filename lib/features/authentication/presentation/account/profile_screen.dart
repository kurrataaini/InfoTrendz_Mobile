import 'package:flutter/material.dart';
import 'package:InfoTrendz_apps/routing/app_router.dart';

import '../../../../common_widgets/custom_text_button.dart';
import '../../../../common_widgets/item_edit_profile_widget.dart';
import '../../../../constants/app_sizes.dart';
import '../../../../shared/theme.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  gapH32,
                  CircleAvatar(
                    backgroundColor: purpleColor,
                    radius: 88 / 2,
                    child: Text(
                      'I',
                      style: whiteTextStyle.copyWith(
                        fontSize: 41,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                  gapH24,
                  Text(
                    'Taekimblee',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: medium,
                    ),
                  ),
                  gapH24,
                  Text(
                    'InfoTrendz media',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  gapH12,
                  Text(
                    'taekimblee11@gmail.com',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  gapH48,
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 17,
              color: lightGreyColor,
            ),
            gapH20,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomTextButton(
                text: 'Ubah Profil',
                style: blueTextStyle.copyWith(
                  fontSize: 16,
                ),
                onPressed: () {
                  context.pushNamed(AppRoute.editProfile.name);
                },
              ),
            ),
            gapH20,
            Container(
              width: double.infinity,
              height: 17,
              color: lightGreyColor,
            ),
            const ItemEditProfileWidget(
              subtitles: 'No Handphone',
              title: 'No Handphone',
            ),
            Divider(
              color: lightGreyColor,
              thickness: 1,
            ),
            const ItemEditProfileWidget(
              subtitles: 'Alamat ',
              title: 'Alamat',
            ),
            Divider(
              color: lightGreyColor,
              thickness: 1,
            ),
            const ItemEditProfileWidget(
              title: 'Pekerjaan',
              subtitles: 'Pekerjaan',
            ),
            Container(
              width: double.infinity,
              height: 17,
              color: lightGreyColor,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: CustomTextButton(
                text: 'Hapus Akun',
                style: greyTitleTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            Divider(
              color: lightGreyColor,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: CustomTextButton(
                text: 'Logout',
                style: blueTextStyle.copyWith(
                  fontSize: 16,
                  color: Colors.red,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 17,
              color: lightGreyColor,
            ),
          ],
        ),
      ),
    );
  }
}
