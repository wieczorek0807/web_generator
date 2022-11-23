import 'package:hive/hive.dart';
import '../models/web_box_model.dart';

abstract class WebBoxLocalDataSource {
  Future<void> saveShadow(WebBoxModel value);
  Future<WebBoxModel> getShadow();
}

class WebBoxLocalDataSourceImpl implements WebBoxLocalDataSource {
  WebBoxLocalDataSourceImpl({required this.hiveBox, required this.key}) {
    _box = Hive.box<WebBoxModel>(hiveBox);
  }

  final String hiveBox;
  late Box _box;
  final String key;

  // static const _key = 'shadow_key_1';

  @override
  Future<void> saveShadow(WebBoxModel value) {
    return _box.put(key, value);
  }

  @override
  Future<WebBoxModel> getShadow() {
    if (_box.isEmpty) {
      throw Exception();
    } else {
      return _box.get(key);
    }
  }
}
