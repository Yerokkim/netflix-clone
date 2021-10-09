import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:netflix_clone/infrastructure/database/external_api_service.dart';
import 'package:netflix_clone/presentation/providers/movie_provider/movie_providers.dart';

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(onPressed: query.isEmpty ? null : () => query = '', icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        final contentSearchState = watch(contentSearchProvider(query));

        return contentSearchState.when(
            data: (value) {
              if (value.isNotEmpty) {
                return Card(
                  child: ListTile(
                    leading: CachedNetworkImage(
                      imageUrl: ApiService.movieImageApi(imageId: value[0]!.backdropPath),
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                    title: Text(value[0]!.title!),
                    trailing: Icon(Icons.more_vert),
                  ),
                );
              } else {
                return Text('no match data');
              }
            },
            loading: () {
              return Text('loading');
            },
            error: (e, r) => Text('error'));
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return Text('');
  }
}
