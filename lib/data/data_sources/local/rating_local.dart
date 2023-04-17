import 'package:flutter_task/data/repositories/rating_repository.dart';
import 'package:flutter_task/models/rating_model.dart';

import '../../../core/helpers/debug_helper.dart';
import '../../fake_data_source.dart';

class RatingLocal implements RatingRepository{
  @override
  Future<List<RatingModel>?> getRating() async{
    try {
      await Future.delayed(const Duration(seconds: 3));
      return FakeDataSource.merchantRatingList;
    } catch (e) {
      DebugHelper.debugPrint("getRating exception => $e");
    }
    return null;

  }

  @override
  Future<bool> useful(int id) async{
    await Future.delayed(const Duration(milliseconds: 1500));
    return true;
  }
}