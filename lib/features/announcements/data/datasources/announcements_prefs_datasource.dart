import 'package:resident_app/features/announcements/data/datasources/announcements_preferences_datasource.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AnnouncementsPrefsDatasource
    implements AnnouncementsPreferencesDataSource {
  const AnnouncementsPrefsDatasource({
    required SharedPreferences preferences,
  }) : _prefs = preferences;

  final SharedPreferences _prefs;

  @override
  Future<void> setReadId(String id) async {
    final List<String> currentIds = List<String>.from(getReadIds());

    if (!currentIds.contains(id)) {
      currentIds.add(id);
    }

    _prefs.setStringList(
      'read_ids',
      currentIds,
    );
  }

  @override
  List<String> getReadIds() {
    final ids = _prefs.getStringList('read_ids');

    return ids ?? <String>[];
  }
}
