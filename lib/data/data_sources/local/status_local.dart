import 'package:flutter_task/core/utils/enums.dart';
import 'package:flutter_task/data/fake_data_source.dart';
import 'package:flutter_task/data/repositories/status_repository.dart';
import 'package:flutter_task/models/status_model.dart';

import '../../../core/helpers/debug_helper.dart';

class StatusLocal implements StatusRepository{
  @override
  Future<List<StatusModel>?> getStatusByType({required OrderStatus orderStatus}) async{
    try {
      await Future.delayed(const Duration(seconds: 2));
      return FakeDataSource.statusList;
    } catch (e) {
      DebugHelper.debugPrint("getStatusByType exception => $e");
    }
    return null;
  }

}