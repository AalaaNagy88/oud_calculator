import 'package:bdaya_repository_pattern/bdaya_repository_pattern.dart';
import 'package:hive/hive.dart';

import '_model_type_ids.dart';

part 'price_model.g.dart';

@HiveType(typeId: PriceModelTypeId)
class PriceModel extends IntHiveObject {
  //TIP: hive fields shouldn't be final if they are editable
  @HiveField(0)
  String title;
  @HiveField(1)
  double goldPrice;
  @HiveField(2)
  double sliverPrice;

  PriceModel({
    this.title,
    this.goldPrice,
    this.sliverPrice,
  });
}
