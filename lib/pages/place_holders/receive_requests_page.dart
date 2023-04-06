import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ReceiveRequestsPage extends StatelessWidget {
  const ReceiveRequestsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(runtimeType.toString()),);
  }
}
