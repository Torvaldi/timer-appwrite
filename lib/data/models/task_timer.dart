import 'package:timer_appwrite/data/models/task.dart';

class TaskTimer {
  String id;
  DateTime startedAt;
  DateTime endedAt;
  Task task;

  TaskTimer({
    required this.id,
    required this.startedAt,
    required this.endedAt,
    required this.task,
  });

  factory TaskTimer.fromJson(Map<String, dynamic> json) {
    return TaskTimer(
      id: json['\$id'],
      startedAt: DateTime.parse(json['startedAt']),
      endedAt: DateTime.parse(json['endedAt']),
      task: Task.fromJson(json['task']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '\$id': id,
      'startedAt': startedAt.toIso8601String(),
      'endedAt': endedAt.toIso8601String(),
      'task': task.toJson(),
    };
  }
}
