// To parse this JSON data, do
//
//     final podcasts = podcastsFromJson(jsonString);

import 'dart:convert';

Podcasts podcastsFromJson(String str) => Podcasts.fromJson(json.decode(str));

String podcastsToJson(Podcasts data) => json.encode(data.toJson());

class Podcasts {
  Podcasts({
    this.status,
    this.feeds,
    this.count,
    this.query,
    this.description,
  });

  String status;
  List<Feed> feeds;
  int count;
  String query;
  String description;

  factory Podcasts.fromJson(Map<String, dynamic> json) => Podcasts(
        status: json["status"] == null ? null : json["status"],
        feeds: json["feeds"] == null
            ? null
            : List<Feed>.from(json["feeds"].map((x) => Feed.fromJson(x))),
        count: json["count"] == null ? null : json["count"],
        query: json["query"] == null ? null : json["query"],
        description: json["description"] == null ? null : json["description"],
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "feeds": feeds == null
            ? null
            : List<dynamic>.from(feeds.map((x) => x.toJson())),
        "count": count == null ? null : count,
        "query": query == null ? null : query,
        "description": description == null ? null : description,
      };
}

class Feed {
  Feed({
    this.id,
    this.title,
    this.url,
    this.originalUrl,
    this.link,
    this.description,
    this.author,
    this.ownerName,
    this.image,
    this.artwork,
    this.lastUpdateTime,
    this.lastCrawlTime,
    this.lastParseTime,
    this.lastGoodHttpStatusTime,
    this.lastHttpStatus,
    this.contentType,
    this.itunesId,
    this.generator,
    this.language,
    this.type,
    this.dead,
    this.crawlErrors,
    this.parseErrors,
    this.categories,
    this.locked,
    this.imageUrlHash,
  });

  int id;
  String title;
  String url;
  String originalUrl;
  String link;
  String description;
  String author;
  String ownerName;
  String image;
  String artwork;
  int lastUpdateTime;
  int lastCrawlTime;
  int lastParseTime;
  int lastGoodHttpStatusTime;
  int lastHttpStatus;
  String contentType;
  int itunesId;
  String generator;
  String language;
  int type;
  int dead;
  int crawlErrors;
  int parseErrors;
  Map<String, String> categories;
  int locked;
  int imageUrlHash;

  factory Feed.fromJson(Map<String, dynamic> json) => Feed(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        url: json["url"] == null ? null : json["url"],
        originalUrl: json["originalUrl"] == null ? null : json["originalUrl"],
        link: json["link"] == null ? null : json["link"],
        description: json["description"] == null ? null : json["description"],
        author: json["author"] == null ? null : json["author"],
        ownerName: json["ownerName"] == null ? null : json["ownerName"],
        image: json["image"] == null ? null : json["image"],
        artwork: json["artwork"] == null ? null : json["artwork"],
        lastUpdateTime:
            json["lastUpdateTime"] == null ? null : json["lastUpdateTime"],
        lastCrawlTime:
            json["lastCrawlTime"] == null ? null : json["lastCrawlTime"],
        lastParseTime:
            json["lastParseTime"] == null ? null : json["lastParseTime"],
        lastGoodHttpStatusTime: json["lastGoodHttpStatusTime"] == null
            ? null
            : json["lastGoodHttpStatusTime"],
        lastHttpStatus:
            json["lastHttpStatus"] == null ? null : json["lastHttpStatus"],
        contentType: json["contentType"] == null ? null : json["contentType"],
        itunesId: json["itunesId"] == null ? null : json["itunesId"],
        generator: json["generator"] == null ? null : json["generator"],
        language: json["language"] == null ? null : json["language"],
        type: json["type"] == null ? null : json["type"],
        dead: json["dead"] == null ? null : json["dead"],
        crawlErrors: json["crawlErrors"] == null ? null : json["crawlErrors"],
        parseErrors: json["parseErrors"] == null ? null : json["parseErrors"],
        categories: json["categories"] == null
            ? null
            : Map.from(json["categories"])
                .map((k, v) => MapEntry<String, String>(k, v)),
        locked: json["locked"] == null ? null : json["locked"],
        imageUrlHash:
            json["imageUrlHash"] == null ? null : json["imageUrlHash"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "url": url == null ? null : url,
        "originalUrl": originalUrl == null ? null : originalUrl,
        "link": link == null ? null : link,
        "description": description == null ? null : description,
        "author": author == null ? null : author,
        "ownerName": ownerName == null ? null : ownerName,
        "image": image == null ? null : image,
        "artwork": artwork == null ? null : artwork,
        "lastUpdateTime": lastUpdateTime == null ? null : lastUpdateTime,
        "lastCrawlTime": lastCrawlTime == null ? null : lastCrawlTime,
        "lastParseTime": lastParseTime == null ? null : lastParseTime,
        "lastGoodHttpStatusTime":
            lastGoodHttpStatusTime == null ? null : lastGoodHttpStatusTime,
        "lastHttpStatus": lastHttpStatus == null ? null : lastHttpStatus,
        "contentType": contentType == null ? null : contentType,
        "itunesId": itunesId == null ? null : itunesId,
        "generator": generator == null ? null : generator,
        "language": language == null ? null : language,
        "type": type == null ? null : type,
        "dead": dead == null ? null : dead,
        "crawlErrors": crawlErrors == null ? null : crawlErrors,
        "parseErrors": parseErrors == null ? null : parseErrors,
        "categories": categories == null
            ? null
            : Map.from(categories)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "locked": locked == null ? null : locked,
        "imageUrlHash": imageUrlHash == null ? null : imageUrlHash,
      };
}
