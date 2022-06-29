class Movie {
  int id;
  String title;
  String releaseDate;
  int voteCount;
  String posterPath;
  String backdropPath;

  Movie({
    required this.id,
    required this.title,
    required this.releaseDate,
    required this.voteCount,
    required this.posterPath,
    required this.backdropPath,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    String imgBaseUrl = "https://image.tmdb.org/t/p/w500/";
    String defaultimg = '/wwemzKWzjKYJFfCeiB57q3r4Bcm.png';

    int id = (json['id'] != null) ? json['id'] as int : 0;
    String title = (json['title'] != null) ? json['title'] as String : '';
    String releaseDate =
        (json['release_date'] != null) ? json['release_date'] as String : '';
    int voteCount =
        (json['vote_count'] != null) ? json['vote_count'] as int : 0;
    String posterPath = (json['poster_path'] != null)
        ? json['poster_path'] as String
        : defaultimg;
    String backdropPath = (json['backdrop_path'] != null)
        ? json['backdrop_path'] as String
        : defaultimg;

    return Movie(
      id: id,
      title: title,
      releaseDate: releaseDate,
      voteCount: voteCount,
      posterPath: imgBaseUrl + posterPath,
      backdropPath: imgBaseUrl + backdropPath,
    );
  }
}
