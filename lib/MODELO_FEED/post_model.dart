class Post {
  String authorName;
  String authorImageUrl;
  String timeAgo;
  String imageUrl;

  Post({
     this.authorName,
     this.authorImageUrl,
     this.timeAgo,
     this.imageUrl,
  });
}

final List<Post> posts = [
  Post(
    authorName: 'Sam Martin',
    authorImageUrl: 'img/1.jpg',
    timeAgo: '5 min',
    imageUrl: 'img/1.jpg',
  ),
  Post(
    authorName: 'Sam Martin',
    authorImageUrl: 'assets/images/user0.png',
    timeAgo: '10 min',
    imageUrl: 'img/1.jpg',
  ),
];

final List<String> stories = [
  'img/1.jpg',
  'img/1.jpg',
  'img/1.jpg',
  'img/1.jpg',
  'img/1.jpg',
  'img/1.jpg',
];