import 'package:http/http.dart' as http;
import 'package:crypto/crypto.dart';
import 'package:convert/convert.dart';
import 'dart:convert';
import '../models/podcast_model.dart';

class PodcastIndexService {
  Future<void> fetchPodCastIndex() async {
    var unixTime = (DateTime.now().millisecondsSinceEpoch / 1000).round();
    String newUnixTime = unixTime.toString();
    // Change to your API key...
    var apiKey = "YE9BH8C5YDXWMCPZM9T8";
    // Change to your API secret...
    var apiSecret = "qQmfzdA3kGmnrChfYTuk3TnqQQj\$rPRt6RykHUDA";
    var firstChunk = utf8.encode(apiKey);
    var secondChunk = utf8.encode(apiSecret);
    var thirdChunk = utf8.encode(newUnixTime);

    var output = new AccumulatorSink<Digest>();
    var input = sha1.startChunkedConversion(output);
    var url = Uri.parse(
        "https://api.podcastindex.org/api/1.0/search/byterm?q=fresh+air&pretty");
    input.add(firstChunk);
    input.add(secondChunk);
    input.add(thirdChunk);
    input.close();
    var digest = output.events.single;

    Map<String, String> headers = {
      "X-Auth-Date": newUnixTime,
      "X-Auth-Key": apiKey,
      "Authorization": digest.toString(),
      "User-Agent": "SomethingAwesome/1.0.1"
    };

    final response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      final dec = jsonDecode(response.body);
      print(dec['feeds'][0]['title']);
      print(dec['feeds'].length);
      final test = Podcasts.fromJson(dec);
      print(test.feeds);

      // return PodCastIndex.fromJson(json.decode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
