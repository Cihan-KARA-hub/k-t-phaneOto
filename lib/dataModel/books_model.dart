//,","rent":0,"created_at":"2023-10-17 10:27:22","updated_at":"2022-07-30 06:59:59"

class BookModel {
  int? id;
  int? user_id;
  String? booksName;
  String? author;
  String? publication;
  bool? rent;
  DateTime? createdAt;
  DateTime? updatedAt;
  BookModel(
      {this.author,
      this.booksName,
      this.createdAt,
      this.id,
      this.publication,
      this.rent,
      this.updatedAt,
      this.user_id});
  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
      id: int.tryParse(json["id"].toString()) ?? 0,
      user_id: int.tryParse(json["user_id"].toString()) ?? 0,
      booksName: json["booksName"],
      author: json["author"],
      publication: json["publication"],
      rent: bool.tryParse(json["rent"].toString()),
      createdAt: DateTime.parse(json["created_at"]),
      updatedAt: DateTime.parse(json["updated_at"]));
  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": user_id,
        "booksName": booksName,
        "author": author,
        "rent": rent,
        "publication": publication,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
