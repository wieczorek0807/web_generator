import 'package:hive/hive.dart';
import '../models/web_box_model.dart';

abstract class WebBoxLocalDataSource {
  Future<void> saveShadow(WebBoxModel value);
  Future<WebBoxModel> getShadow();
}

class WebBoxLocalDataSourceImpl implements WebBoxLocalDataSource {
  WebBoxLocalDataSourceImpl() {
    _box = Hive.box<WebBoxModel>("WebBoxHiveBox");
  }

  late Box _box;

  static const _key = 'shadow_key_1';

  @override
  Future<void> saveShadow(WebBoxModel value) {
    return _box.put(_key, value);
  }

  @override
  Future<WebBoxModel> getShadow() {
    if (_box.isEmpty) {
      throw Exception();
    } else {
      return _box.get(_key);
    }
  }
}
