import 'package:flutter/material.dart';
import './services/podcastindex_service.dart';
import './services/xml_service.dart';
import './models/podcast_model.dart';
import './models/pod_class.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PodcastIndexService podcastIndexService = PodcastIndexService();
  XmlService xmlService = XmlService();
  List<Feed> _feeds;
  bool isLoading = true;
  List<Podclass> xml = [];
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
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Podcast Index'),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                xml = await xmlService.getXML(_feeds[0].url);
                setState(() {});
              },
              child: Text('xml'),
            ),
            xml == null
                ? CircularProgressIndicator()
                : Expanded(
                    child: ListView.builder(
                        itemCount: xml.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(xml[index].title),
                            subtitle: Text(xml[index].link),
                          );
                        }),
                  )
          ],
        ),
      ),
    );
  }
}
