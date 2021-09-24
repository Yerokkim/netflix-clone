import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netflix_clone/domain/movie/movie_result.dart';
import 'package:netflix_clone/infrastructure/database/external_api_service.dart';
import 'package:netflix_clone/presentation/loading/loading_page.dart';
import 'package:netflix_clone/presentation/providers/movie_provider/movie_providers.dart';
import 'package:netflix_clone/presentation/wigets/action_button_list.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, watch, child) {
      // watch(movieStateNotifierProvider.notifier).getMovies();
      final _movieState = watch(movieStateNotifierProvider);

      return _movieState.when(
        data: (movies) => MovieGridView(
          movieData: movies,
        ),
        loading: () => LoadingPage(),
        error: (e, _) => Text('error'),
      );
    });
  }
}

class MovieGridView extends StatelessWidget {
  final List<MovieResult> movieData;

  MovieGridView({required this.movieData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                ([
                  Stack(
                    children: [
                      Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Stack(children: <Widget>[
                          AspectRatio(
                            aspectRatio: 1,
                            child: Image.network(
                              ApiService.movieImageApi(imageId: movieData[0].backdropPath),
                              // width: 140,
                              height: 800,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            child: Column(
                              children: [
                                Text(movieData[0].name!,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ],
                            ),
                          ),
                          Positioned.fill(
                            child: BackgroundGradient(),
                          ),
                        ]),
                      ),
                    ],
                  ),
                  ActionButtonList(),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      padding: const EdgeInsets.all(8.0),
                      margin: const EdgeInsets.symmetric(vertical: 20.0),
                      height: 250.0,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: movieData.length - 1,
                        itemBuilder: (context, index) {
                          return Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Stack(children: <Widget>[
                              Image.network(
                                ApiService.movieImageApi(imageId: movieData[index + 1].posterPath),
                                width: 140,
                                height: 250,
                                fit: BoxFit.cover,
                              ),
                            ]),
                          );

                          //  Card(

                          //   child: AspectRatio(
                          //       aspectRatio: 1,
                          //       child: Image.network(
                          //         ApiService.movieImageApi(imageId: movieData[index].posterPath),
                          //         fit: BoxFit.cover,
                          //       )),
                          // );
                        },
                      )),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BackgroundGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          stops: [
            0.2,
            0.8,
          ],
          colors: [
            Colors.black.withOpacity(0.7),
            Colors.black.withOpacity(0.1),
          ],
        ),
      ),
    );
  }
}
