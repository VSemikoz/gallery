class ImageItemResponse {
  final int? id;
  final String? largeImageURL;

  const ImageItemResponse({
    this.id,
    this.largeImageURL,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ImageItemResponse &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          largeImageURL == other.largeImageURL);

  @override
  int get hashCode => id.hashCode ^ largeImageURL.hashCode;

  @override
  String toString() {
    return 'ImageItemResponse{'
        ' id: $id,'
        ' largeImageURL: $largeImageURL,'
        '}';
  }

  ImageItemResponse copyWith({
    int? id,
    String? largeImageURL,
  }) {
    return ImageItemResponse(
      id: id ?? this.id,
      largeImageURL: largeImageURL ?? this.largeImageURL,
    );
  }

  factory ImageItemResponse.fromMap(Map<String, dynamic> map) {
    return ImageItemResponse(
      id: map['id'] as int,
      largeImageURL: map['largeImageURL'] as String,
    );
  }
}
