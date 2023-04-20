import 'package:hive/hive.dart';
import '../models/web_box_model.dart';

abstract class WebBoxLocalDataSource {
  Future<void> saveWaveBoxToLocalDataSource(WebBoxModel value);
  Future<WebBoxModel> getWaveBoxFromLocalDataSource();
}

class WebBoxLocalDataSourceImpl implements WebBoxLocalDataSource {
  WebBoxLocalDataSourceImpl({required this.hiveBox, required this.key}) {
    _box = Hive.box<WebBoxModel>(hiveBox);
  }

  final String hiveBox;
  late Box _box;
  final String key;

  @override
  Future<void> saveWaveBoxToLocalDataSource(WebBoxModel value) {
    return _box.put(key, value);
  }

  @override
  Future<WebBoxModel> getWaveBoxFromLocalDataSource() async {
    if (_box.isEmpty) {
      throw Exception();
    } else {
      WebBoxModel webBoxModel = await _box.get(key);
      return webBoxModel;
    }
  }
}
