class Project {
  String id;
  String name;
  String description;
  bool isTma;
  String reference;

  Project({
    required this.id,
    required this.name,
    required this.description,
    this.isTma = false,
    required this.reference,
  });

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      id: json['\$id'],
      name: json['name'],
      description: json['description'],
      isTma: json['isTma'] ?? false,
      reference: json['reference'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '\$id': id,
      'name': name,
      'description': description,
      'isTma': isTma,
      'reference': reference,
    };
  }

  static List<Project> emptyList() {
    return <Project>[];
  }
}
