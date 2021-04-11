import 'package:flutter/material.dart';
import '../models/episodes.dart';

class EpisodeScreen extends StatelessWidget {
  EpisodeScreen(this.headers, this.episodes);
  final List<Result> headers;
  final List<Result> episodes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: episodes.length < 10 ? episodes.length : 10,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 100,
                    child: Card(
                      elevation: 5,
                      child: SingleChildScrollView(
                        child: ListTile(
                          title: Text(episodes[index].trackName),
                          subtitle: Text(episodes[index].description),
                          dense: true,
                        ),
                      ),
                    ),
                  );
                }),
          ),

          // Text(episodes[1].releaseDate.toString()),
          // Text.episodes[0].artistName),
          // // Text(episodes[0].collectionName),
          // Text(widget.episodes[0].collectionName.toString()),
          // Text(widget.episodes[1].trackName),
        ],
      ),
    );
  }
}
