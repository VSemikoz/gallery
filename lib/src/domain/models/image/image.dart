class ImageItem {
  final int? id;
  final String? pageURL;
  final String? previewURL;
  final String? largeImageURL;

  const ImageItem({
    this.id,
    this.pageURL,
    this.previewURL,
    this.largeImageURL,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          (other is ImageItem &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              pageURL == other.pageURL &&
              previewURL == other.previewURL &&
              largeImageURL == other.largeImageURL);

  @override
  int get hashCode => id.hashCode ^ pageURL.hashCode ^ previewURL.hashCode ^ largeImageURL.hashCode;

  @override
  String toString() {
    return 'ImageItem{' +
        ' id: $id,' +
        ' pageURL: $pageURL,' +
        ' previewURL: $previewURL,' +
        ' largeImageURL: $largeImageURL,' +
        '}';
  }

  ImageItem copyWith({
    int? id,
    String? pageURL,
    String? previewURL,
    String? largeImageURL,
  }) {
    return ImageItem(
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

  factory ImageItem.fromMap(Map<String, dynamic> map) {
    return ImageItem(
      id: map['id'] as int,
      pageURL: map['pageURL'] as String,
      previewURL: map['previewURL'] as String,
      largeImageURL: map['largeImageURL'] as String,
    );
  }
}
