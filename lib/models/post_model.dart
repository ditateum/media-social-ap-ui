import 'package:flutter_social_ui_main/models/user_model.dart';

class Post {
  final String? imageUrl;
  final User? author;
  final String? title;
  final String? location;
  final int? likes;
  final int? comments;

  Post({
    this.imageUrl,
    this.author,
    this.title,
    this.location,
    this.likes,
    this.comments,
  });
}
