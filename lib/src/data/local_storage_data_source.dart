import 'package:hive/hive.dart';

import '../presentation/screens/update_shadows/model/shadow.dart';

abstract class LocalStorageDataSource {
  Future<void> saveShadow(Shadow value);
  Future<Shadow?> getShadow();
}

class LocalStrorageDataSourceImpl implements LocalStorageDataSource {
  LocalStrorageDataSourceImpl() {
    _box = Hive.box<Shadow>("HiveBox");
  }

  late Box _box;

  static const _key = 'shadow_key';

  @override
  Future<void> saveShadow(Shadow value) {
    return _box.put(_key, value);
  }

  @override
  Future<Shadow?> getShadow() {
    return _box.get(_key);
  }
}
