import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:around_the_world/models/itinerary.dart';
import 'package:http/http.dart' as http;

class ItineraryListPresenter {
  final String _uriOldItineraries = 'https://po-belu-svetu.zp.ua/wp-json/wp/v2/itineraries?per_page=40';
  final String _uriItineraries = 'https://po-belu-svetu.zp.ua/wp-json/custom-routes/v1/itineraries';

  Future<List<Itinerary>> fetchItineraries(http.Client client) async {
    final response = await client
        .get(Uri.parse(_uriItineraries));

    // Use the compute function to run parsePhotos in a separate isolate.
    return compute(parseItineraries, response.body);
  }

// A function that converts a response body into a List<Photo>.
  List<Itinerary> parseItineraries(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
    List<Itinerary> itineraries = parsed.map<Itinerary>((json) => Itinerary.fromJson(json)).toList();
    for (var value in itineraries) {
      value.title = value.title.replaceAll(RegExp('[^А-Яа-яA-Za-z ]'),'');
    }
    return itineraries;
  }
}