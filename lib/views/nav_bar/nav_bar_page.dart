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
            BottomNavigationBarItem(icon: const Icon(Icons.home_filled,size: 25,), label: _titles[0]),
            // BottomNavigationBarItem(icon: Image.asset("assets/images/home.png",color: Color(0xffC8D1E1),width: 20,height: 20,),activeIcon: Image.asset("assets/images/home.png",width: 20,height: 20,), label: _titles[0]),
            // BottomNavigationBarItem(icon: const Icon(Icons.backpack), label: _titles[1]),
            BottomNavigationBarItem(icon: Image.asset("assets/images/receive.png",width: 20,height: 20,),activeIcon: Image.asset("assets/images/receive.png",color: Colors.blue,width: 20,height: 20,), label: _titles[1]),
            // BottomNavigationBarItem(icon: const Icon(Icons.calculate_rounded), label: _titles[2]),
            BottomNavigationBarItem(icon: Image.asset("assets/images/calc.png",width: 20,height: 20,),activeIcon: Image.asset("assets/images/calc.png",color: Colors.blue,width: 20,height: 20,), label: _titles[2]),
            // BottomNavigationBarItem(icon: const Icon(Icons.person), label: _titles[3]),
            BottomNavigationBarItem(icon: Image.asset("assets/images/account.png",width: 20,height: 20,),activeIcon: Image.asset("assets/images/account.png",color: Colors.blue,width: 20,height: 20,), label: _titles[3]),
          ],
        );
      },
    );
  }
}
