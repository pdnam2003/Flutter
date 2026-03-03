import '../entities//bug.dart';
import '../services/database_service.dart';
import '../services/fake_api_service.dart';

class BugRepository {
  final FakeApiService api = FakeApiService();

  Future<List<Bug>> getBugs() async {
    final db = await DatabaseService.database;

    final localData = await db.query('bugs');
    if (localData.isNotEmpty) {
      return localData.map((e) => Bug.fromMap(e)).toList();
    }

    // nếu chưa có thì fetch từ API
    final remoteData = await api.fetchBugs();
    for (var bug in remoteData) {
      await db.insert('bugs', bug.toMap());
    }

    return remoteData;
  }

  Future<void> addBug(Bug bug) async {
    final db = await DatabaseService.database;
    await db.insert('bugs', bug.toMap());
  }
}