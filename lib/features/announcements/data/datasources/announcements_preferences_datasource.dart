abstract class AnnouncementsPreferencesDataSource {
  List<String> getReadIds();

  Future<void> setReadId(String id);
}
