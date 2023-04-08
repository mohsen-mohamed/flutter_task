import 'package:flutter_task/models/user_model.dart';

class RatingModel {
  final UserModel user;
  final int rating;
  final String date;
  final String comment;
  final bool useful;

  RatingModel(this.user, this.rating, this.date, this.comment, this.useful);

  RatingModel copyWith({UserModel? user, int? rating, String? date, String? comment, bool? useful}) => RatingModel(
        user ?? this.user,
        rating ?? this.rating,
        date ?? this.date,
        comment ?? this.comment,
        useful ?? this.useful,
      );
}
