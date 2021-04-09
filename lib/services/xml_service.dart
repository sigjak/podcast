import 'package:xml/xml.dart';
import '../models/pod_class.dart';
import 'package:http/http.dart' as http;

class XmlService {
  //'https://feeds.npr.org/381444908/podcast.xml'
  Future<List<Podclass>> getXML(String xmlUrl) async {
    final response = await http.get(Uri.parse(xmlUrl));
    final document = XmlDocument.parse(response.body);
    var raw = document.findAllElements('item');
    //print(document.toXmlString(pretty: true, indent: '\t'));
    var elements = raw.map((element) {
      return Podclass(element.findElements('title').first.text,
          element.findAllElements('content:encoded').first.text);
    }).toList();

    return elements;
  }
}
