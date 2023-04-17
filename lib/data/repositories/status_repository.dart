import 'package:flutter_task/core/utils/enums.dart';

import '../../models/status_model.dart';

abstract class StatusRepository{

  Future<List<StatusModel>?> getStatusByType({required OrderStatus orderStatus});

}