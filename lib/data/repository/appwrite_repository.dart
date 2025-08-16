import 'package:intl/intl.dart';
import 'package:appwrite/appwrite.dart';
import 'package:timer_appwrite/config/environment.dart';
import 'package:timer_appwrite/data/constants/keys.dart';

/// A repository responsible for handling network interactions with the Appwrite server.
///
/// It provides a helper method to ping the server.
class AppwriteRepository {
  static const String appwriteProjectId = Keys.appwriteProjectId;
  static const String appwriteProjectName = Keys.appwriteProjectName;
  static const String appwritePublicEndpoint = Keys.appwritePublicEndpoint;

  final Client _client = Client()
      .setProject(appwriteProjectId)
      .setEndpoint(appwritePublicEndpoint);

  late final Account _account;
  late final Databases _databases;

  AppwriteRepository._internal() {
    _account = Account(_client);
    _databases = Databases(_client);
  }

  static final AppwriteRepository _instance = AppwriteRepository._internal();

  /// Singleton instance getter
  factory AppwriteRepository() => _instance;

  Account get account => _account;
  Databases get databases => _databases;
}
