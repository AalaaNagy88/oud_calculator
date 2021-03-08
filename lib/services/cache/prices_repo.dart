import 'package:bdaya_repository_pattern/bdaya_repository_pattern.dart';
import 'package:oud_calculator/app/models/_exports.dart';

class PricesRepo extends ActiveRepo<int, PriceModel> {
  @override
  String get boxName => 'prices';
}
