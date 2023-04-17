import 'package:flutter/cupertino.dart';
import 'package:flutter_task/core/utils/enums.dart';
import 'package:flutter_task/data/data_sources/local/status_local.dart';
import 'package:flutter_task/data/repositories/status_repository.dart';

import '../models/status_model.dart';

class StatusViewModel extends ChangeNotifier{

  final StatusRepository _statusRepository = StatusLocal();
  List<StatusModel>? _statusList;
  List<StatusModel>? get statusList => _statusList;


  Future<void> load({required OrderStatus orderStatus})async{
    _statusList = await _statusRepository.getStatusByType(orderStatus: orderStatus);
  }

  String transTitle(OrderStatus orderStatus) {
    switch (orderStatus) {
      case OrderStatus.onItsWay:
        return "قيد التواصل";
      case OrderStatus.delivered:
        return "تم التسليم";
      case OrderStatus.notDelivered:
        return "لم يتم التسليم";
      case OrderStatus.discards:
        return "مرتجع";
    }
  }
}