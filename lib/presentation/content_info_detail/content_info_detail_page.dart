import 'package:flutter/material.dart';
import 'package:netflix_clone/domain/movie/movie_result.dart';
import 'package:netflix_clone/infrastructure/database/external_api_service.dart';

class ContentInfoDetailPage extends StatelessWidget {
  final MovieResult movieData;

  ContentInfoDetailPage({Key? key, required this.movieData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String title = movieData.title != null ? movieData.title! : movieData.name!;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: CustomScrollView(slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: Image.network(
                      ApiService.movieImageApi(imageId: movieData.backdropPath),
                      height: 800,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    '${movieData.popularity!.toPrecision(1).round().toString()} % populity',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_arrow,
                        color: Colors.black,
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                      label: Text(
                        'Play',
                        style: TextStyle(color: Colors.black),
                      )),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(movieData.overview!),
                ],
              ),
            ),
          ]),
        ));
  }
}

extension Ex on double {
  double toPrecision(int n) => double.parse(toStringAsFixed(n));
}
