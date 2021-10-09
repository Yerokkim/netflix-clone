import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netflix_clone/domain/movie/movie_result.dart';
import 'package:netflix_clone/infrastructure/database/external_api_service.dart';
import 'package:netflix_clone/infrastructure/models/movie_result.dart';
import 'package:netflix_clone/presentation/content_info_detail/content_info_detail_page.dart';
import 'package:netflix_clone/presentation/loading/loading_page.dart';
import 'package:netflix_clone/presentation/providers/movie_provider/movie_providers.dart';
import 'package:netflix_clone/presentation/wigets/action_button_list.dart';
// import 'package:provider/provider.dart';

class LandingPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final _seriesStream = watch(getAllSeriesProvider);

    return _seriesStream.when(
        data: (movies) => MovieGridView(seriesData: movies),
        loading: () => LoadingPage(),
        error: (error, _) {
          return Text('error');
        });
  }
}

class MovieGridView extends StatelessWidget {
  final List<MovieResult?> seriesData;

  MovieGridView({
    Key? key,
    required this.seriesData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                ([
                  Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(alignment: Alignment.center, children: <Widget>[
                      Positioned(
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: CachedNetworkImage(
                            imageUrl:
                                ApiService.movieImageApi(imageId: seriesData[0]!.backdropPath),
                            height: 800,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 14,
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
                              seriesData[0]!.name!,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Positioned.fill(
                      //   child: BackgroundGradient(),
                      // ),
                    ]),
                  ),
                  Consumer(
                    builder: (BuildContext context, T Function<T>(ProviderBase<Object?, T>) watch,
                        Widget? child) {
                      final toggleActionState =
                          watch(addToListStateNotifierProvider(seriesData[0]!.id.toString()));
                      final toggleActionProvider = watch(
                          addToListStateNotifierProvider(seriesData[0]!.id.toString()).notifier);

                      return toggleActionState.when(
                        unClick: () => ActionButtonList(
                          isFirstActionBtnClicked: false,
                          firstActionButtonPressed: () {
                            toggleActionProvider.toggleAddToList(movie: seriesData[0]!);
                          },
                        ),
                        clicked: (id) => ActionButtonList(
                          isFirstActionBtnClicked: true,
                          firstActionButtonPressed: () {
                            toggleActionProvider.toggleAddToList(
                                movie: seriesData[0]!, movieDocumentId: id);
                          },
                          secondActionButtonPressed: () {},
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
                  MovieGridWidget(movieData: seriesData),
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
                  Consumer(builder: (context, watch, child) {
                    final _movieStream = watch(getAllMovieProvider);
                    return _movieStream.when(
                        data: (movie) => MovieGridWidget(movieData: movie),
                        loading: () => LoadingPage(),
                        error: (error, _) => Text('error'));
                  }),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MovieGridWidget extends StatelessWidget {
  const MovieGridWidget({
    Key? key,
    required this.movieData,
  }) : super(key: key);

  final List<MovieResult?> movieData;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        height: 250.0,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: movieData.length - 1,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContentInfoDetailPage(
                      movieData: movieData[index + 1]!,
                    ),
                  ),
                );
              },
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(children: <Widget>[
                  CachedNetworkImage(
                    imageUrl: ApiService.movieImageApi(imageId: movieData[index + 1]?.posterPath),
                    width: 140,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ]),
              ),
            );
          },
        ));
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
