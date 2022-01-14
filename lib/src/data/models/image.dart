class ImageItemResponse {
  final int? id;
  final String? pageURL;
  final String? previewURL;
  final String? largeImageURL;

  const ImageItemResponse({
    this.id,
    this.pageURL,
    this.previewURL,
    this.largeImageURL,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ImageItemResponse &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          pageURL == other.pageURL &&
          previewURL == other.previewURL &&
          largeImageURL == other.largeImageURL);

  @override
  int get hashCode => id.hashCode ^ pageURL.hashCode ^ previewURL.hashCode ^ largeImageURL.hashCode;

  @override
  String toString() {
    return 'ImageItemResponse{' +
        ' id: $id,' +
        ' pageURL: $pageURL,' +
        ' previewURL: $previewURL,' +
        ' largeImageURL: $largeImageURL,' +
        '}';
  }

  ImageItemResponse copyWith({
    int? id,
    String? pageURL,
    String? previewURL,
    String? largeImageURL,
  }) {
    return ImageItemResponse(
      id: id ?? this.id,
      pageURL: pageURL ?? this.pageURL,
      previewURL: previewURL ?? this.previewURL,
      largeImageURL: largeImageURL ?? this.largeImageURL,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'pageURL': pageURL,
      'previewURL': previewURL,
      'largeImageURL': largeImageURL,
    };
  }

  factory ImageItemResponse.fromMap(Map<String, dynamic> map) {
    return ImageItemResponse(
      id: map['id'] as int,
      pageURL: map['pageURL'] as String,
      previewURL: map['previewURL'] as String,
      largeImageURL: map['largeImageURL'] as String,
    );
  }
}
