import 'package:orzugrand/data/sharedpref/storage.dart';

class AppLanguageRepository {
  /// Get Language
  Future<String> getCurrentLanguage() async {
    await StorageRepository.getInstance();
    String lang = StorageRepository.getString('language');
    if (lang.isEmpty) {
      return "russian";
    } else {
      return lang;
    }
  }

  /// Update Language
  Future<void> updateLanguage({required String value}) async {
    await StorageRepository.getInstance();
    StorageRepository.putString('language', value);
  }
}
