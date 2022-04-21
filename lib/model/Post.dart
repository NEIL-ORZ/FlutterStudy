class Post {
  const Post({
    required this.title,
    required this.author,
    required this.imgUrl
  });

  final String title;
  final String author;
  final String imgUrl;
}

final List<Post> posts = [
  const Post(title: "aaaa", author: "1111", imgUrl: "https://images.pexels.com/photos/5036212/pexels-photo-5036212.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
  const Post(title: "bbbb", author: "2222", imgUrl: "https://images.pexels.com/photos/11653295/pexels-photo-11653295.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
  const Post(title: "cccc", author: "3333", imgUrl: "https://images.pexels.com/photos/9554674/pexels-photo-9554674.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
  const Post(title: "dddd", author: "4444", imgUrl: "https://images.pexels.com/photos/11182884/pexels-photo-11182884.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
  const Post(title: "eeeee", author: "5555", imgUrl: "https://images.pexels.com/photos/6622889/pexels-photo-6622889.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
];