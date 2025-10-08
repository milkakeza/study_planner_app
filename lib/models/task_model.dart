class TaskModel {
  String title;
  String? description;
  DateTime date;
  DateTime? reminderTime;

  TaskModel({
    required this.title,
    required this.description,
    required this.date,
    this.reminderTime,
  });

  Map<String, dynamic> toJson() => {
    'title': title,
    'description': description,
    'date': date.toIso8601String(),
    'reminderTime': reminderTime?.toIso8601String(),
  };

  static TaskModel fromJson(Map<String, dynamic> json) => TaskModel(
    title: json['title'],
    description: json['description'],
    date: DateTime.parse(json['date']),
    reminderTime: json['reminderTime'] != null ? DateTime.parse(json['reminderTime']) : null,
  );
}