class ProjectItemModel {
  final String title;
  final String caption;
  final String imageUrl;

  ProjectItemModel({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });

  ProjectItemModel.fromJson(Map<String, dynamic> map)
      : title = map['title'],
        caption = map['caption'],
        imageUrl = map['imageUrl'];
}
