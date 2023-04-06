import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/navigation/app_router.gr.dart';

@RoutePage()
class NavBarPage extends StatelessWidget {
  const NavBarPage({Key? key}) : super(key: key);

  final List<String> _titles = const [
    "الرئيسية",
    "طلبات الاستلام",
    "أوامر الشغل",
    "الحساب",
  ];
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        ReceiveRequestsRoute(),
        WorkOrdersRoute(),
        AccountRoute(),
      ],
      appBarBuilder: (_, tabsRouter) => tabsRouter.activeIndex != 0
          ? AppBar(
              title: Text(_titles[tabsRouter.activeIndex]),
            )
          : AppBar(
              title: (const ListTile(
                title: Text(
                  "اهلا بك",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffC8C8C8),
                  ),
                ),
                subtitle: Text(
                  "خالد طايع",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              )),
              elevation: 0,
              backgroundColor: Colors.black,
            ),
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          type: BottomNavigationBarType.fixed,

          // fixedColor: Colors.black45,
          // backgroundColor: Colors.green,
          // backgroundColor: Colors.black54,
          // selectedItemColor: Colors.deepOrangeAccent,
          // unselectedItemColor: Colors.blue,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(icon: const Icon(Icons.home_rounded), label: _titles[0]),
            BottomNavigationBarItem(icon: const Icon(Icons.search_rounded), label: _titles[1]),
            BottomNavigationBarItem(icon: const Icon(Icons.school_rounded), label: _titles[2]),
            BottomNavigationBarItem(icon: const Icon(Icons.person), label: _titles[3]),
          ],
        );
      },
    );
  }
}
