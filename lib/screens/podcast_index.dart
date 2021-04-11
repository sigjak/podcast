import 'package:flutter/material.dart';
import '../services/podcastindex_service.dart';
import '../models/podcast_model.dart';
import '../services/episode_service.dart';

class PodcastIndexScreen extends StatefulWidget {
  @override
  _PodcastIndexScreenState createState() => _PodcastIndexScreenState();
}

class _PodcastIndexScreenState extends State<PodcastIndexScreen> {
  PodcastIndexService podcastIndexService = PodcastIndexService();
  EpisodeService episodeService = EpisodeService();

  List<Feed> _feeds;
  bool isSearching = false;
  String searchTerm;
  final myController = TextEditingController();

  Future<void> getPodcasts(String searchTerm) async {
    await podcastIndexService.fetchPodCastIndex(searchTerm).then((feeds) {
      setState(() {
        _feeds = feeds;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    podcastIndexService.fetchPodCastIndex('fresh+air').then((feeds) {
      setState(() {
        _feeds = feeds;
      });
    });
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: !isSearching
              ? Text('Podcasts')
              : TextField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  autofocus: true,
                  controller: myController,
                  decoration: InputDecoration(
                    hintText: '   ....search for podcasts by name',
                    hintStyle: TextStyle(color: Colors.grey[300]),
                  ),
                ),
          actions: [
            !isSearching
                ? IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      setState(() {
                        myController.clear();
                        isSearching = true;
                      });
                    })
                : IconButton(
                    icon: Icon(Icons.check),
                    onPressed: () async {
                      String temp = myController.text.trim();
                      searchTerm = temp.replaceAll(' ', '+');
                      await getPodcasts(searchTerm);

                      setState(() {
                        isSearching = false;
                      });
                    }),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text('Search Results',
                  style: TextStyle(
                    fontSize: 24,
                  )),
            ),
            if (_feeds == null)
              Center(child: CircularProgressIndicator())
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
                                  ),
                                ),
                                title: Text(_feeds[index].title),
                                subtitle: Text(_feeds[index].description),
                                dense: true,
                                trailing: IconButton(
                                  onPressed: () async {
                                    int itunesId = _feeds[index].itunesId;
                                    print(itunesId.toString());
                                    await episodeService
                                        .getEpisodes('214089682');
                                    // check if itues id is valid
                                  },
                                  icon: Icon(Icons.open_in_new),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
          ],
        ));
  }
}
