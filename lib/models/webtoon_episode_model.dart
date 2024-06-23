class WebtoonEpisodeModel {
  final String title, thumb, rating, date, id;

  WebtoonEpisodeModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        thumb = json['thumb'],
        rating = json['rating'],
        date = json['date'],
        id = json['id'];
}
