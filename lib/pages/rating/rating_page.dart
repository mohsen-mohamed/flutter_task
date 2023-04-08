import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/core/theme/theme.dart';
import 'package:flutter_task/pages/rating/widgets/tab_button.dart';

import 'tabs/customers_tab.dart';
import 'tabs/merchant_tab.dart';
import 'tabs/users_tab.dart';

@RoutePage()
class RatingPage extends StatefulWidget {
  const RatingPage({Key? key}) : super(key: key);

  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Color _selectedColor(int buttonIndex) => _tabController.index == buttonIndex ? AppTheme.defaultColor : AppTheme.appGreyColor;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(title: const Text("تقييمات", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)), centerTitle: true),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TabButton(
                      title: "تقييمات التجار",
                      color: _selectedColor(0),
                      onTab: () => setState(() {
                        _tabController.index = 0;
                        _tabController.animateTo(0);
                      }),
                    ),
                    TabButton(
                      title: "تقييمات العملاء",
                      color: _selectedColor(1),
                      onTab: () => setState(() {
                        _tabController.index = 1;
                        _tabController.animateTo(1);
                      }),
                    ),
                    TabButton(
                      title: "مرجعات المستخدمين",
                      color: _selectedColor(2),
                      onTab: () => setState(() {
                        _tabController.index = 2;
                        _tabController.animateTo(2);
                      }),
                    ),
                  ],
                ),
              ),
              TabBar(
                controller: _tabController,
                indicator: BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
                overlayColor: MaterialStateProperty.all(Theme.of(context).scaffoldBackgroundColor),
                splashFactory: NoSplash.splashFactory,
                onTap: (index) => setState(() {
                  _tabController.index = index;
                  _tabController.animateTo(index);
                }),
                tabs: const [
                  SizedBox.shrink(),
                  SizedBox.shrink(),
                  SizedBox.shrink(),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    MerchantTab(),
                    CustomersTab(),
                    UsersTab(),
                  ],
                ),
              ),
            ],
          ),
          /*TabBar(
            controller: _tabController,
            indicator: const BoxDecoration(color: Colors.transparent),
            labelPadding: const EdgeInsets.symmetric(horizontal: 10),
            onTap: (index) => setState(() => _tabController.index = index),
            // isScrollable: true,
            labelColor: Colors.black,
            splashFactory: NoSplash.splashFactory,
            overlayColor: MaterialStateProperty.all(Colors.black),
            tabs: [
              TabButton(
                title: "تقييمات التجار",
                color: _selectedColor(0),
                onTab: () => setState(() => _tabController.index = 0),
              ),
              TabButton(
                title: "تقييمات العملاء",
                color: _selectedColor(1),
                onTab: () => setState(() => _tabController.index = 1),
              ),
              TabButton(
                title: "مرجعات المستخدمين",
                color: _selectedColor(2),
                onTab: () => setState(() => _tabController.index = 2),
              ),
            ],
          )*/
        ),
      ),
    );
  }
}
