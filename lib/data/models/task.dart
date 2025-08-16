import 'package:timer_appwrite/data/models/project.dart';

class Task {
  String id;
  String title;
  String description;
  String issueUrl;
  bool isPaused;
  bool isDone;
  Project project;

  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.issueUrl,
    this.isPaused = false,
    this.isDone = false,
    required this.project,
  });

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      id: json['\$id'],
      title: json['title'],
      description: json['description'],
      issueUrl: json['issueUrl'],
      isPaused: json['isPaused'] ?? false,
      isDone: json['isDone'] ?? false,
      project: Project.fromJson(json['project']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '\$id': id,
      'title': title,
      'description': description,
      'issueUrl': issueUrl,
      'isPaused': isPaused,
      'isDone': isDone,
      'project': project.toJson(),
    };
  }
}
