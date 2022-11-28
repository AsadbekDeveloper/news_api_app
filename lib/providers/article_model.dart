class Article {
  final String source;
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });
  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      source: json['source']['name'] ?? 'Unknown',
      author: json['author'] ?? 'Unknown',
      title: json['title']?? 'Unknown',
      description: json['description']?? 'Unknown',
      url: json['url']?? 'Unknown',
      urlToImage: json['urlToImage']?? 'Unknown',
      publishedAt: json['publishedAt']?? 'Unknown',
      content: json['content']?? 'Unknown',
    );
  }
}
