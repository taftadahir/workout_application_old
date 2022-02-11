class ExerciseModel {
  int id;
  int sysId;
  int userId;
  String name;
  bool published;
  bool? timeBased;
  bool? repBased;
  bool? useWeight;
  String? description;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? deletedAt;

  ExerciseModel({
    required this.id,
    required this.sysId,
    required this.userId,
    required this.name,
    required this.published,
    this.useWeight,
    this.repBased,
    this.timeBased,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });
}
