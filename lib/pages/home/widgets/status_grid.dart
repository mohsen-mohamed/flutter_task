import 'package:flutter/material.dart';
import 'package:flutter_task/pages/home/widgets/status_grid_item.dart';

class StatusGrid extends StatelessWidget {
  const StatusGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 16,
        mainAxisExtent: 95
    ),
      shrinkWrap: true,
      primary: false,
      children: [
        StatusGridItem(
          icon: const Icon(Icons.delivery_dining, size: 35,color: Colors.blue),
          title: "قيد التواصل",
          onTab: () {},
        ),
        StatusGridItem(
          icon: const Icon(Icons.done_all, size: 35, color: Colors.greenAccent),
          title: "تم التسليم",
          onTab: () {},
        ),
        StatusGridItem(
          icon: const Icon(Icons.pin_drop, size: 35, color: Colors.orangeAccent),
          title: "لم يتم التسليم",
          onTab: () {},
        ),
        StatusGridItem(
          icon: const Icon(Icons.cancel, size: 35, color: Colors.red),
          title: "مرتجع",
          onTab: () {
            print("sdgfdsgsdf");
          },
        ),
      ],
    );
    /*return Column(
      children: [
        Row(
          children: [
            StatusGridItem(
              icon: const Icon(Icons.delivery_dining, size: 35,color: Colors.blue),
              title: "قيد التوصيل",
              onTab: () {},
            ),
            const SizedBox(width: 16),
            StatusGridItem(
              icon: const Icon(Icons.done_all, size: 35, color: Colors.greenAccent),
              title: "تم التسليم",
              onTab: () {},
            ),
          ],
        ),
        const SizedBox(height: 11),
        Row(
          children: [
            StatusGridItem(
              icon: const Icon(Icons.pin_drop, size: 35, color: Colors.orangeAccent),
              title: "لم يتم التسليم",
              onTab: () {},
            ),
            const SizedBox(width: 16),
            StatusGridItem(
              icon: const Icon(Icons.cancel, size: 35, color: Colors.red),
              title: "مرتجع",
              onTab: () {
                print("sdgfdsgsdf");
              },
            ),
          ],
        ),
      ],
    );*/
  }
}
