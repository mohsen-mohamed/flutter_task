import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_task/views/home/home_page.dart';

import '../rating_page.dart';
import '../widgets/merchant_rating_card.dart';

class MerchantTab extends ConsumerWidget {
  const MerchantTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final viewModel = ref.watch(ratingViewModelProvider);
    final asyncValue = ref.watch(ratingFutureProvider);
    return Scaffold(
      body: asyncValue.when(
          error: (error, stackTrace) => Center(child: Text(error.toString())),
          loading: () => const Center(child: SizedBox(height: 50, width: 50, child: CircularProgressIndicator.adaptive())),
          data: (_) => RefreshIndicator(
            onRefresh: () => viewModel.reload(),
            child: ListView.separated(
                itemCount: viewModel.ratingList?.length ?? 0,
                separatorBuilder: (_, __) => const SizedBox(height: 10),
                itemBuilder: (context, index) {
                  final currentItem = viewModel.ratingList?[index];
                  if (currentItem != null) {
                    return MerchantRatingCard(
                      ratingModel: currentItem,
                      onUsefulTab: () => viewModel.makeUseful(index),
                      key: Key(currentItem.hashCode.toString()),
                      isLoading: viewModel.isBusy,
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                }),
          )),
    );
  }
}
