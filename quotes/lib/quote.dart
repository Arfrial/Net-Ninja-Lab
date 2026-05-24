class Quote {

  final String text;
  final String author;
  final String category;
  int likes;

  Quote({
    required this.text,
    required this.author,
    this.category = 'General',
    this.likes = 0,
  });

}