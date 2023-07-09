import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:InfoTrendz_apps/common_widgets/menu_card_widget.dart';
import '../../../routing/app_router.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Menu'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              context.pushNamed(AppRoute.search.name);
            },
            icon: const Icon(
              Icons.search,
              size: 30.0,
            ),
          ),
          IconButton(
            onPressed: () {
              context.pushNamed(AppRoute.profile.name);
            },
            icon: const Icon(
              Icons.account_circle,
              size: 30.0,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          Wrap(
            spacing: 15,
            alignment: WrapAlignment.start,
            runSpacing: 10,
            runAlignment: WrapAlignment.spaceBetween,
            children: const [
              MenuCardWidget(),
              MenuCardWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
