import 'package:flutter/material.dart';
import '../services/podcastindex_service.dart';
import '../models/podcast_model.dart';

class PodcastIndexScreen extends StatefulWidget {
  @override
  _PodcastIndexScreenState createState() => _PodcastIndexScreenState();
}

class _PodcastIndexScreenState extends State<PodcastIndexScreen> {
  PodcastIndexService podcastIndexService = PodcastIndexService();

  List<Feed> _feeds;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    podcastIndexService.fetchPodCastIndex().then((feeds) {
      setState(() {
        _feeds = feeds;

        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Podcast index'),
        ),
        body: Column(
          children: [
            if (_feeds == null)
              CircularProgressIndicator()
            else
              Expanded(
                child: ListView.builder(
                    itemCount: _feeds.length < 10 ? _feeds.length : 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Container(
                          height: 100,
                          child: Card(
                            elevation: 5,
                            child: SingleChildScrollView(
                              child: ListTile(
                                leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(4.0),
                                  child: Image.network(
                                    _feeds[index].image,
                                    // width: 48,
                                    // height: 48,
                                    // fit: BoxFit.cover,
                                  ),
                                ),
                                title: Text(_feeds[index].title),
                                subtitle: Text(_feeds[index].description),
                                dense: true,
                              ),
                            ),
                          ),
                        ),
                      );
                      // return Column(
                      //   children: [
                      //     Text(_feeds[index].title,
                      //         style: TextStyle(fontSize: 24)),
                      //     Text(_feeds[index].image),
                      //     Text(_feeds[index].artwork),
                      //     Text(_feeds[index].url),
                      //     Text(_feeds[index].description),
                      //     Text(_feeds[index].itunesId.toString()),
                      //     Text('-----------------------------'),
                      //   ],
                      // );
                    }),
              ),
          ],
        ));
  }
}
