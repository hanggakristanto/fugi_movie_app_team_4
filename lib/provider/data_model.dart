class DataModel {
  final String title;
  final int runtime;
  final int budget;
  final double popularity;

  DataModel({
    required this.title,
    required this.runtime,
    required this.budget,
    required this.popularity,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      title: json['title'] ?? "",
      runtime: json['runtime'] ?? "",
      budget: json['budget'] ?? "",
      popularity: json['popularity'] ?? "",
    );
  }
}
