import 'package:flutter/material.dart';

import '../widgets/user_rating_card.dart';

class UsersTab extends StatelessWidget {
  const UsersTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
          itemCount: 1,
          separatorBuilder: (_, __) => const SizedBox(height: 10),
          itemBuilder: (context, index) => const UserRatingCard(),
        )
    );
  }
}
