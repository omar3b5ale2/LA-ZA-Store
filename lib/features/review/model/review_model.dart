class ReviewModel {
  String comment;
  String date;
  String name;
  int rate;

  ReviewModel(this.comment, this.date, this.name, this.rate);

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      json['comment'],
      json['date'],
      json['name'],
      json['rate'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'comment': comment,
      'date': date,
      'name': name,
      'rate': rate,
    };
  }

  Map<String, dynamic> toMap() {
    return {
      'comment': comment,
      'date': date,
      'name': name,
      'rate': rate,
    };
  }
}
