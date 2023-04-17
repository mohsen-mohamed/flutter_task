import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_task/view_models/status_view_model.dart';

import '../../core/utils/enums.dart';
import 'status_summary_list_item.dart';

final _statusViewModelProvider = ChangeNotifierProvider.autoDispose((ref) => StatusViewModel());
final _statusFutureProvider = FutureProvider.autoDispose.family<void, OrderStatus>((ref, status) async {
  final vm = ref.read(_statusViewModelProvider);
  if (vm.statusList?.isEmpty ?? true) await vm.load(orderStatus: status);
});

@RoutePage()
class StatusPage extends ConsumerWidget {
  const StatusPage({required this.status, Key? key}) : super(key: key);
  final OrderStatus status;

  @override
  Widget build(BuildContext context, ref) {
    final viewModel = ref.watch(_statusViewModelProvider);
    final asyncValue = ref.watch(_statusFutureProvider(status));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          viewModel.transTitle(status),
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: asyncValue.when(
        error: (error, stackTrace) => Center(child: Text(error.toString())),
        loading: () => const Center(child: SizedBox(height: 50, width: 50, child: CircularProgressIndicator.adaptive())),
        data: (_) => ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 34),
            itemCount: viewModel.statusList?.length ?? 0,
            separatorBuilder: (_, __) => const SizedBox(height: 13),
            itemBuilder: (context, index) {
              final currentItem = viewModel.statusList?[index];
              if (currentItem != null) {
                return StatusSummaryListItem(statusModel: currentItem);
              } else {
                return const SizedBox.shrink();
              }
            }),
      ),
    );
  }
}
