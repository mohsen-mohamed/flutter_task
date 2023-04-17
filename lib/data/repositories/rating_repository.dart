import '../../models/rating_model.dart';

abstract class RatingRepository{

  Future<List<RatingModel>?> getRating();
  Future<bool> useful(int id);
}