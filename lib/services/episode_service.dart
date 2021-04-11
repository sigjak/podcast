import 'package:http/http.dart' as http;
import '../models/episodes.dart';

class EpisodeService {
  Future<List<Result>> getEpisodes(String collectionId) async {
    List<Result> result = [];
    String baseUrl =
        "https://itunes.apple.com/lookup?country=US&media=podcast&entity=podcastEpisode&limit=2&id=";

    var url = Uri.parse(baseUrl + collectionId);
    final response = await http.get(url);
    if (response.statusCode == 200) {
      Episodes episodes = episodesFromJson(response.body);
      result = episodes.results;

      // // print(results.length);
      // //print(results[1].episodeUrl);
      // print(results[1].description);

    }
    return result;
  }
}
