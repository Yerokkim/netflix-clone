import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netflix_clone/domain/movie/movie_result.dart';
import 'package:netflix_clone/infrastructure/database/external_api_service.dart';
import 'package:netflix_clone/infrastructure/models/movie_result.dart';
import 'package:netflix_clone/presentation/loading/loading_page.dart';
import 'package:netflix_clone/presentation/providers/movie_provider/movie_providers.dart';
import 'package:netflix_clone/presentation/wigets/action_button_list.dart';
// import 'package:provider/provider.dart';

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
  final List<MovieResultModel> movieData;

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
                  Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(children: <Widget>[
                      AspectRatio(
                        aspectRatio: 1,
                        child: Image.network(
                          ApiService.movieImageApi(imageId: movieData[0].backdropPath),
                          height: 800,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned.fill(
                        child: BackgroundGradient(),
                      ),
                      Positioned(
                        bottom: 20,
                        right: 45,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/logo_small.png',
                                  fit: BoxFit.contain,
                                  width: 30,
                                  height: 30,
                                ),
                                Text(
                                  'SERIE',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              movieData[0].name!,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                  Consumer(
                    builder: (BuildContext context, T Function<T>(ProviderBase<Object?, T>) watch,
                        Widget? child) {
                      final toggleActionState =
                          watch(addToListStateNotifierProvider(movieData[0].id.toString()));
                      final toggleActionProvider = watch(
                          addToListStateNotifierProvider(movieData[0].id.toString()).notifier);

                      print(toggleActionState);
                      return toggleActionState.when(
                        unClick: () => ActionButtonList(
                          isFirstActionBtnClicked: false,
                          firstActionButtonPressed: () {
                            toggleActionProvider.toggleAddToList(movie: movieData[0]);
                          },
                        ),
                        clicked: (id) => ActionButtonList(
                          isFirstActionBtnClicked: true,
                          firstActionButtonPressed: () {
                            toggleActionProvider.toggleAddToList(
                                movie: movieData[0], movieDocumentId: id);
                          },
                        ),
                        toggleFailed: (e) => Text(''),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Text(
                      'Top Trend',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
            Colors.black.withOpacity(0.8),
            Colors.black.withOpacity(0.1),
          ],
        ),
      ),
    );
  }
}
