class PostScreenModel {
  int? id;
  int? userId;
  String? title;
  String? body;
  PostScreenModel({this.id, this.userId, this.title, this.body});
  PostScreenModel.fromJson(Map<String, dynamic> data) {
    id = data['id'];
    userId = data['userId'];
    title = data['title'];
    body = data['body'];
  }
  Map<String, dynamic> toJson() {
    return {'id': id, 'userId': userId, 'title': title, 'body': body};
  }
}
