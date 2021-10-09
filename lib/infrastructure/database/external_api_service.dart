class ApiService {
  static String popularSeriesApi({required apiKey}) =>
      'https://api.themoviedb.org/3/tv/popular?api_key=$apiKey&language=en-US&page=1';

  static String popularMovieApi({required apiKey}) =>
      'https://api.themoviedb.org/3/movie/popular?api_key=$apiKey&language=en-US&page=1';

  static String movieImageApi({required imageId}) => 'https://image.tmdb.org/t/p/original/$imageId';
}
