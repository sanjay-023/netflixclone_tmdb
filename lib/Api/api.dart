import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:netflixclone/movie_details/movie_details.dart';

Future<List<MovieDetails>> fetchAllMovie({required category}) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/$category?api_key=477d29afe1c129fc2b73bd112626d490'));

  if (response.statusCode == 200) {
    final result = jsonDecode(response.body);
    Iterable list = result["results"];
    return list.map((movie) => MovieDetails.fromJson(movie)).toList();
  } else {
    throw Exception("Failed to load movie");
  }
}
