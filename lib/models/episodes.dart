// To parse this JSON data, do
//
//     final episodes = episodesFromJson(jsonString);

import 'dart:convert';

Episodes episodesFromJson(String str) => Episodes.fromJson(json.decode(str));

String episodesToJson(Episodes data) => json.encode(data.toJson());

class Episodes {
  Episodes({
    this.resultCount,
    this.results,
  });

  int resultCount;
  List<Result> results;

  factory Episodes.fromJson(Map<String, dynamic> json) => Episodes(
        resultCount: json["resultCount"] == null ? null : json["resultCount"],
        results: json["results"] == null
            ? null
            : List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "resultCount": resultCount == null ? null : resultCount,
        "results": results == null
            ? null
            : List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class Result {
  Result({
    this.wrapperType,
    this.kind,
    this.artistId,
    this.collectionId,
    this.trackId,
    this.artistName,
    this.collectionName,
    this.trackName,
    this.collectionCensoredName,
    this.trackCensoredName,
    this.artistViewUrl,
    this.collectionViewUrl,
    this.feedUrl,
    this.trackViewUrl,
    this.artworkUrl30,
    this.artworkUrl60,
    this.artworkUrl100,
    this.collectionPrice,
    this.trackPrice,
    this.trackRentalPrice,
    this.collectionHdPrice,
    this.trackHdPrice,
    this.trackHdRentalPrice,
    this.releaseDate,
    this.collectionExplicitness,
    this.trackExplicitness,
    this.trackCount,
    this.country,
    this.currency,
    this.primaryGenreName,
    this.artworkUrl600,
    this.genreIds,
    this.genres,
    this.previewUrl,
    this.episodeUrl,
    this.artworkUrl160,
    this.episodeFileExtension,
    this.episodeContentType,
    this.artistIds,
    this.closedCaptioning,
    this.shortDescription,
    this.description,
    this.episodeGuid,
    this.trackTimeMillis,
  });

  String wrapperType;
  String kind;
  int artistId;
  int collectionId;
  int trackId;
  String artistName;
  String collectionName;
  String trackName;
  String collectionCensoredName;
  String trackCensoredName;
  String artistViewUrl;
  String collectionViewUrl;
  String feedUrl;
  String trackViewUrl;
  String artworkUrl30;
  String artworkUrl60;
  String artworkUrl100;
  double collectionPrice;
  double trackPrice;
  int trackRentalPrice;
  int collectionHdPrice;
  int trackHdPrice;
  int trackHdRentalPrice;
  DateTime releaseDate;
  String collectionExplicitness;
  String trackExplicitness;
  int trackCount;
  String country;
  String currency;
  String primaryGenreName;
  String artworkUrl600;
  List<String> genreIds;
  List<dynamic> genres;
  String previewUrl;
  String episodeUrl;
  String artworkUrl160;
  String episodeFileExtension;
  String episodeContentType;
  List<int> artistIds;
  String closedCaptioning;
  String shortDescription;
  String description;
  String episodeGuid;
  int trackTimeMillis;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        wrapperType: json["wrapperType"] == null ? null : json["wrapperType"],
        kind: json["kind"] == null ? null : json["kind"],
        artistId: json["artistId"] == null ? null : json["artistId"],
        collectionId:
            json["collectionId"] == null ? null : json["collectionId"],
        trackId: json["trackId"] == null ? null : json["trackId"],
        artistName: json["artistName"] == null ? null : json["artistName"],
        collectionName:
            json["collectionName"] == null ? null : json["collectionName"],
        trackName: json["trackName"] == null ? null : json["trackName"],
        collectionCensoredName: json["collectionCensoredName"] == null
            ? null
            : json["collectionCensoredName"],
        trackCensoredName: json["trackCensoredName"] == null
            ? null
            : json["trackCensoredName"],
        artistViewUrl:
            json["artistViewUrl"] == null ? null : json["artistViewUrl"],
        collectionViewUrl: json["collectionViewUrl"] == null
            ? null
            : json["collectionViewUrl"],
        feedUrl: json["feedUrl"] == null ? null : json["feedUrl"],
        trackViewUrl:
            json["trackViewUrl"] == null ? null : json["trackViewUrl"],
        artworkUrl30:
            json["artworkUrl30"] == null ? null : json["artworkUrl30"],
        artworkUrl60:
            json["artworkUrl60"] == null ? null : json["artworkUrl60"],
        artworkUrl100:
            json["artworkUrl100"] == null ? null : json["artworkUrl100"],
        collectionPrice:
            json["collectionPrice"] == null ? null : json["collectionPrice"],
        trackPrice: json["trackPrice"] == null ? null : json["trackPrice"],
        trackRentalPrice:
            json["trackRentalPrice"] == null ? null : json["trackRentalPrice"],
        collectionHdPrice: json["collectionHdPrice"] == null
            ? null
            : json["collectionHdPrice"],
        trackHdPrice:
            json["trackHdPrice"] == null ? null : json["trackHdPrice"],
        trackHdRentalPrice: json["trackHdRentalPrice"] == null
            ? null
            : json["trackHdRentalPrice"],
        releaseDate: json["releaseDate"] == null
            ? null
            : DateTime.parse(json["releaseDate"]),
        collectionExplicitness: json["collectionExplicitness"] == null
            ? null
            : json["collectionExplicitness"],
        trackExplicitness: json["trackExplicitness"] == null
            ? null
            : json["trackExplicitness"],
        trackCount: json["trackCount"] == null ? null : json["trackCount"],
        country: json["country"] == null ? null : json["country"],
        currency: json["currency"] == null ? null : json["currency"],
        primaryGenreName:
            json["primaryGenreName"] == null ? null : json["primaryGenreName"],
        artworkUrl600:
            json["artworkUrl600"] == null ? null : json["artworkUrl600"],
        genreIds: json["genreIds"] == null
            ? null
            : List<String>.from(json["genreIds"].map((x) => x)),
        genres: json["genres"] == null
            ? null
            : List<dynamic>.from(json["genres"].map((x) => x)),
        previewUrl: json["previewUrl"] == null ? null : json["previewUrl"],
        episodeUrl: json["episodeUrl"] == null ? null : json["episodeUrl"],
        artworkUrl160:
            json["artworkUrl160"] == null ? null : json["artworkUrl160"],
        episodeFileExtension: json["episodeFileExtension"] == null
            ? null
            : json["episodeFileExtension"],
        episodeContentType: json["episodeContentType"] == null
            ? null
            : json["episodeContentType"],
        artistIds: json["artistIds"] == null
            ? null
            : List<int>.from(json["artistIds"].map((x) => x)),
        closedCaptioning:
            json["closedCaptioning"] == null ? null : json["closedCaptioning"],
        shortDescription:
            json["shortDescription"] == null ? null : json["shortDescription"],
        description: json["description"] == null ? null : json["description"],
        episodeGuid: json["episodeGuid"] == null ? null : json["episodeGuid"],
        trackTimeMillis:
            json["trackTimeMillis"] == null ? null : json["trackTimeMillis"],
      );

  Map<String, dynamic> toJson() => {
        "wrapperType": wrapperType == null ? null : wrapperType,
        "kind": kind == null ? null : kind,
        "artistId": artistId == null ? null : artistId,
        "collectionId": collectionId == null ? null : collectionId,
        "trackId": trackId == null ? null : trackId,
        "artistName": artistName == null ? null : artistName,
        "collectionName": collectionName == null ? null : collectionName,
        "trackName": trackName == null ? null : trackName,
        "collectionCensoredName":
            collectionCensoredName == null ? null : collectionCensoredName,
        "trackCensoredName":
            trackCensoredName == null ? null : trackCensoredName,
        "artistViewUrl": artistViewUrl == null ? null : artistViewUrl,
        "collectionViewUrl":
            collectionViewUrl == null ? null : collectionViewUrl,
        "feedUrl": feedUrl == null ? null : feedUrl,
        "trackViewUrl": trackViewUrl == null ? null : trackViewUrl,
        "artworkUrl30": artworkUrl30 == null ? null : artworkUrl30,
        "artworkUrl60": artworkUrl60 == null ? null : artworkUrl60,
        "artworkUrl100": artworkUrl100 == null ? null : artworkUrl100,
        "collectionPrice": collectionPrice == null ? null : collectionPrice,
        "trackPrice": trackPrice == null ? null : trackPrice,
        "trackRentalPrice": trackRentalPrice == null ? null : trackRentalPrice,
        "collectionHdPrice":
            collectionHdPrice == null ? null : collectionHdPrice,
        "trackHdPrice": trackHdPrice == null ? null : trackHdPrice,
        "trackHdRentalPrice":
            trackHdRentalPrice == null ? null : trackHdRentalPrice,
        "releaseDate":
            releaseDate == null ? null : releaseDate.toIso8601String(),
        "collectionExplicitness":
            collectionExplicitness == null ? null : collectionExplicitness,
        "trackExplicitness":
            trackExplicitness == null ? null : trackExplicitness,
        "trackCount": trackCount == null ? null : trackCount,
        "country": country == null ? null : country,
        "currency": currency == null ? null : currency,
        "primaryGenreName": primaryGenreName == null ? null : primaryGenreName,
        "artworkUrl600": artworkUrl600 == null ? null : artworkUrl600,
        "genreIds": genreIds == null
            ? null
            : List<dynamic>.from(genreIds.map((x) => x)),
        "genres":
            genres == null ? null : List<dynamic>.from(genres.map((x) => x)),
        "previewUrl": previewUrl == null ? null : previewUrl,
        "episodeUrl": episodeUrl == null ? null : episodeUrl,
        "artworkUrl160": artworkUrl160 == null ? null : artworkUrl160,
        "episodeFileExtension":
            episodeFileExtension == null ? null : episodeFileExtension,
        "episodeContentType":
            episodeContentType == null ? null : episodeContentType,
        "artistIds": artistIds == null
            ? null
            : List<dynamic>.from(artistIds.map((x) => x)),
        "closedCaptioning": closedCaptioning == null ? null : closedCaptioning,
        "shortDescription": shortDescription == null ? null : shortDescription,
        "description": description == null ? null : description,
        "episodeGuid": episodeGuid == null ? null : episodeGuid,
        "trackTimeMillis": trackTimeMillis == null ? null : trackTimeMillis,
      };
}

class GenreClass {
  GenreClass({
    this.name,
    this.id,
  });

  String name;
  String id;

  factory GenreClass.fromJson(Map<String, dynamic> json) => GenreClass(
        name: json["name"] == null ? null : json["name"],
        id: json["id"] == null ? null : json["id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "id": id == null ? null : id,
      };
}
