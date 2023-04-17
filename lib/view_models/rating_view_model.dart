import 'package:flutter/cupertino.dart';
import 'package:flutter_task/data/data_sources/local/rating_local.dart';
import 'package:flutter_task/data/repositories/rating_repository.dart';

import '../models/rating_model.dart';

class RatingViewModel extends ChangeNotifier {
  final RatingRepository _ratingRepository = RatingLocal();
  List<RatingModel>? _ratingList;
  bool _isBusy = false;
  List<RatingModel>? get ratingList => _ratingList;
  bool get isBusy => _isBusy;
  void _setIsBusy(bool value){
    _isBusy = value;
  notifyListeners();
  }
  Future<void> initialLoading() async {
    _ratingList = await _ratingRepository.getRating();
  }

  Future<void> reload() async {
    await initialLoading();
    notifyListeners();
  }

  Future<void> makeUseful(int index) async {
    _setIsBusy(true);
    await _ratingRepository.useful(index);
    _ratingList![index] = _ratingList![index].copyWith(useful: true);
    _setIsBusy(false);
  }
}
