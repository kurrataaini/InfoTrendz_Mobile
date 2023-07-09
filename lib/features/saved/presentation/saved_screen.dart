import 'package:flutter/material.dart';
import 'package:InfoTrendz_apps/routing/app_router.dart';

import '../../../common_widgets/news_card.dart';
import '../../../constants/app_sizes.dart';
import '../../../shared/custom_alert_dialog.dart';
import 'package:go_router/go_router.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Baca Nanti',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showCustomAlertDialog(
                context,
                'Yakin ingin hapus semua',
              );
            },
            icon: const Icon(
              Icons.delete_sweep,
              size: 30.0,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        children:  [
          gapH24,
          NewsCard(
            onTap: () {
              context.pushNamed(AppRoute.detailNews.name);
            },
            image: 'assets/img_news_two.png',
            title: 'Menilik Prospek Pasar Saham di Tahun Kelinci Air',
            category: 'Regional',
          ),
        ],
      ),
    );
  }
}
