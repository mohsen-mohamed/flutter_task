import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_task/core/navigation/app_router.gr.dart';
import 'package:flutter_task/view_models/rating_view_model.dart';
import 'widgets/custody_list.dart';
import 'widgets/list_tile_button_widget.dart';
import 'widgets/status_grid.dart';
import 'widgets/summary_list.dart';

final ratingViewModelProvider = ChangeNotifierProvider((ref) => RatingViewModel());

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final double _height = 12;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 10),
        children: [
          const CustodyList(),
          SizedBox(height: _height),
          const SummaryList(),
          SizedBox(height: _height),
          const StatusGrid(),
          SizedBox(height: _height),
          Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
              final vm = ref.watch(ratingViewModelProvider);
              if (vm.ratingList?.isEmpty ?? true) vm.reload();

              return ListTileButtonWidget(
                title: "تقييمات التجار والعملاء",
                icon: Badge(
                  label: Text(vm.ratingList?.length.toString() ?? "0", style: const TextStyle(color: Colors.white), textAlign: TextAlign.center),
                  isLabelVisible: vm.ratingList?.isNotEmpty ?? false,
                  alignment: AlignmentDirectional.topStart,
                  backgroundColor: Colors.red,
                  child: Image.asset("assets/images/star.png", width: 35, height: 35),
                  // child: Icon(Icons.star_rate_rounded, size: 45, color: AppTheme.defaultColor),assets/images/star.png
                ),
                percentage: "80",
                onTab: () => context.router.push(const RatingRoute()),
              );
            },
          ),
          SizedBox(height: _height),
          ListTileButtonWidget(
            title: "استلام الشحنات",
            icon: Image.asset(
              "assets/images/barcode.png",
              width: 35,
              height: 35,
            ),
            // Icon(
            //   Icons.qr_code_2,
            //   size: 30,
            //   color: AppTheme.defaultColor,
            // ),
          ),
        ],
      ),
    );
  }
}
