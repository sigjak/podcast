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
    this.trackTimeMillis,
    this.contentAdvisoryRating,
    this.episodeFileExtension,
    this.artworkUrl160,
    this.episodeContentType,
    this.episodeUrl,
    this.shortDescription,
    this.artistIds,
    this.closedCaptioning,
    this.episodeGuid,
    this.description,
  });

  WrapperType wrapperType;
  Kind kind;
  int artistId;
  int collectionId;
  int trackId;
  String artistName;
  Name collectionName;
  String trackName;
  Name collectionCensoredName;
  Name trackCensoredName;
  String artistViewUrl;
  String collectionViewUrl;
  String feedUrl;
  String trackViewUrl;
  String artworkUrl30;
  String artworkUrl60;
  String artworkUrl100;
  int collectionPrice;
  int trackPrice;
  int trackRentalPrice;
  int collectionHdPrice;
  int trackHdPrice;
  int trackHdRentalPrice;
  DateTime releaseDate;
  String collectionExplicitness;
  String trackExplicitness;
  int trackCount;
  Country country;
  String currency;
  PrimaryGenreNameEnum primaryGenreName;
  String artworkUrl600;
  List<String> genreIds;
  List<dynamic> genres;
  String previewUrl;
  int trackTimeMillis;
  ContentAdvisoryRating contentAdvisoryRating;
  EpisodeFileExtension episodeFileExtension;
  String artworkUrl160;
  EpisodeContentType episodeContentType;
  String episodeUrl;
  String shortDescription;
  List<int> artistIds;
  ClosedCaptioning closedCaptioning;
  String episodeGuid;
  String description;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        wrapperType: json["wrapperType"] == null
            ? null
            : wrapperTypeValues.map[json["wrapperType"]],
        kind: json["kind"] == null ? null : kindValues.map[json["kind"]],
        artistId: json["artistId"] == null ? null : json["artistId"],
        collectionId:
            json["collectionId"] == null ? null : json["collectionId"],
        trackId: json["trackId"] == null ? null : json["trackId"],
        artistName: json["artistName"] == null ? null : json["artistName"],
        collectionName: json["collectionName"] == null
            ? null
            : nameValues.map[json["collectionName"]],
        trackName: json["trackName"] == null ? null : json["trackName"],
        collectionCensoredName: json["collectionCensoredName"] == null
            ? null
            : nameValues.map[json["collectionCensoredName"]],
        trackCensoredName: json["trackCensoredName"] == null
            ? null
            : nameValues.map[json["trackCensoredName"]],
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
        country:
            json["country"] == null ? null : countryValues.map[json["country"]],
        currency: json["currency"] == null ? null : json["currency"],
        primaryGenreName: json["primaryGenreName"] == null
            ? null
            : primaryGenreNameEnumValues.map[json["primaryGenreName"]],
        artworkUrl600:
            json["artworkUrl600"] == null ? null : json["artworkUrl600"],
        genreIds: json["genreIds"] == null
            ? null
            : List<String>.from(json["genreIds"].map((x) => x)),
        genres: json["genres"] == null
            ? null
            : List<dynamic>.from(json["genres"].map((x) => x)),
        previewUrl: json["previewUrl"] == null ? null : json["previewUrl"],
        trackTimeMillis:
            json["trackTimeMillis"] == null ? null : json["trackTimeMillis"],
        contentAdvisoryRating: json["contentAdvisoryRating"] == null
            ? null
            : contentAdvisoryRatingValues.map[json["contentAdvisoryRating"]],
        episodeFileExtension: json["episodeFileExtension"] == null
            ? null
            : episodeFileExtensionValues.map[json["episodeFileExtension"]],
        artworkUrl160:
            json["artworkUrl160"] == null ? null : json["artworkUrl160"],
        episodeContentType: json["episodeContentType"] == null
            ? null
            : episodeContentTypeValues.map[json["episodeContentType"]],
        episodeUrl: json["episodeUrl"] == null ? null : json["episodeUrl"],
        shortDescription:
            json["shortDescription"] == null ? null : json["shortDescription"],
        artistIds: json["artistIds"] == null
            ? null
            : List<int>.from(json["artistIds"].map((x) => x)),
        closedCaptioning: json["closedCaptioning"] == null
            ? null
            : closedCaptioningValues.map[json["closedCaptioning"]],
        episodeGuid: json["episodeGuid"] == null ? null : json["episodeGuid"],
        description: json["description"] == null ? null : json["description"],
      );

  Map<String, dynamic> toJson() => {
        "wrapperType":
            wrapperType == null ? null : wrapperTypeValues.reverse[wrapperType],
        "kind": kind == null ? null : kindValues.reverse[kind],
        "artistId": artistId == null ? null : artistId,
        "collectionId": collectionId == null ? null : collectionId,
        "trackId": trackId == null ? null : trackId,
        "artistName": artistName == null ? null : artistName,
        "collectionName":
            collectionName == null ? null : nameValues.reverse[collectionName],
        "trackName": trackName == null ? null : trackName,
        "collectionCensoredName": collectionCensoredName == null
            ? null
            : nameValues.reverse[collectionCensoredName],
        "trackCensoredName": trackCensoredName == null
            ? null
            : nameValues.reverse[trackCensoredName],
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
        "country": country == null ? null : countryValues.reverse[country],
        "currency": currency == null ? null : currency,
        "primaryGenreName": primaryGenreName == null
            ? null
            : primaryGenreNameEnumValues.reverse[primaryGenreName],
        "artworkUrl600": artworkUrl600 == null ? null : artworkUrl600,
        "genreIds": genreIds == null
            ? null
            : List<dynamic>.from(genreIds.map((x) => x)),
        "genres":
            genres == null ? null : List<dynamic>.from(genres.map((x) => x)),
        "previewUrl": previewUrl == null ? null : previewUrl,
        "trackTimeMillis": trackTimeMillis == null ? null : trackTimeMillis,
        "contentAdvisoryRating": contentAdvisoryRating == null
            ? null
            : contentAdvisoryRatingValues.reverse[contentAdvisoryRating],
        "episodeFileExtension": episodeFileExtension == null
            ? null
            : episodeFileExtensionValues.reverse[episodeFileExtension],
        "artworkUrl160": artworkUrl160 == null ? null : artworkUrl160,
        "episodeContentType": episodeContentType == null
            ? null
            : episodeContentTypeValues.reverse[episodeContentType],
        "episodeUrl": episodeUrl == null ? null : episodeUrl,
        "shortDescription": shortDescription == null ? null : shortDescription,
        "artistIds": artistIds == null
            ? null
            : List<dynamic>.from(artistIds.map((x) => x)),
        "closedCaptioning": closedCaptioning == null
            ? null
            : closedCaptioningValues.reverse[closedCaptioning],
        "episodeGuid": episodeGuid == null ? null : episodeGuid,
        "description": description == null ? null : description,
      };
}

enum ClosedCaptioning { NONE }

final closedCaptioningValues = EnumValues({"none": ClosedCaptioning.NONE});

enum Name { FRESH_AIR }

final nameValues = EnumValues({"Fresh Air": Name.FRESH_AIR});

enum ContentAdvisoryRating { CLEAN }

final contentAdvisoryRatingValues =
    EnumValues({"Clean": ContentAdvisoryRating.CLEAN});

enum Country { USA }

final countryValues = EnumValues({"USA": Country.USA});

enum EpisodeContentType { AUDIO }

final episodeContentTypeValues =
    EnumValues({"audio": EpisodeContentType.AUDIO});

enum EpisodeFileExtension { MP3 }

final episodeFileExtensionValues =
    EnumValues({"mp3": EpisodeFileExtension.MP3});

class GenreClass {
  GenreClass({
    this.name,
    this.id,
  });

  PrimaryGenreNameEnum name;
  String id;

  factory GenreClass.fromJson(Map<String, dynamic> json) => GenreClass(
        name: json["name"] == null
            ? null
            : primaryGenreNameEnumValues.map[json["name"]],
        id: json["id"] == null ? null : json["id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : primaryGenreNameEnumValues.reverse[name],
        "id": id == null ? null : id,
      };
}

enum PrimaryGenreNameEnum { BOOKS }

final primaryGenreNameEnumValues =
    EnumValues({"Books": PrimaryGenreNameEnum.BOOKS});

enum Kind { PODCAST, PODCAST_EPISODE }

final kindValues = EnumValues(
    {"podcast": Kind.PODCAST, "podcast-episode": Kind.PODCAST_EPISODE});

enum WrapperType { TRACK, PODCAST_EPISODE }

final wrapperTypeValues = EnumValues({
  "podcastEpisode": WrapperType.PODCAST_EPISODE,
  "track": WrapperType.TRACK
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
