class ApodModel {
  final String text;
  final String imageUrl;

  ApodModel({required this.text, required this.imageUrl});

  factory ApodModel.fromMap(Map<String, dynamic> map) {
    return ApodModel(
      text: map['title'],
      imageUrl: map['hdurl'],
    );
  }
}
