import 'package:appwrite/models.dart';
import 'package:flutter/material.dart';
import 'package:timer_appwrite/data/repository/appwrite_repository.dart';
import 'package:go_router/go_router.dart';

class ParametresPage extends StatefulWidget {
  const ParametresPage({super.key});

  @override
  State<ParametresPage> createState() => _ParametresPageState();
}

class _ParametresPageState extends State<ParametresPage> {
  void _onDisconnect() async {
    User user = await AppwriteRepository().account.get();
    await AppwriteRepository().account.deleteSession(sessionId: 'current');

    GoRouter.of(context).go('/login');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              Text(
                'Paramètres',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              TextButton.icon(
                style: TextButton.styleFrom(
                  iconColor: Colors.red,
                  foregroundColor: Colors.red,
                  textStyle: TextStyle(color: Colors.red),
                ),
                onPressed: _onDisconnect,
                icon: Icon(Icons.logout),
                label: Text("Déconnexion"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
