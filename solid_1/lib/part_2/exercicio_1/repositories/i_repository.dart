abstract class IRepository {
  Future<List<Map<String, dynamic>>> fetch();
}