import 'package:shared_preferences/shared_preferences.dart';

class PointsManager {
  static const String playerXPointsKey = 'playerXPoints';
  static const String playerYPointsKey = 'playerYPoints';

  // Save points for Player X
  static Future<void> savePlayerXPoints(int points) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(playerXPointsKey, points);
  }

  // Load points for Player X
  static Future<int> loadPlayerXPoints() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(playerXPointsKey) ?? 0;
  }

  // Save points for Player o
  static Future<void> savePlayerYPoints(int points) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(playerYPointsKey, points);
  }

  // Load points for Player o
  static Future<int> loadPlayerYPoints() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(playerYPointsKey) ?? 0;
  }
}
