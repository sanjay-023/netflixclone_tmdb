import 'package:flutter/material.dart';
import 'package:netflixclone/Api/api.dart';
import 'package:netflixclone/common_widget/common_widgets.dart';
import 'package:netflixclone/movie_details/movie_details.dart';

class SearchTileWidget extends StatefulWidget {
  const SearchTileWidget({Key? key}) : super(key: key);

  @override
  State<SearchTileWidget> createState() => _SearchTileWidgetState();
}

class _SearchTileWidgetState extends State<SearchTileWidget> {
  List<MovieDetails> movieList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    populateAllMovie();
  }

  void populateAllMovie() async {
    final movies = await fetchAllMovie(category: 'top_rated');
    setState(() {
      movieList = movies;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: List.generate(movieList.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              SizedBox(
                width: (size.width - 36) * 0.8,
                height: 80,
                child: Row(children: [
                  Stack(
                    children: [
                      Container(
                          width: 120,
                          height: 70,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://image.tmdb.org/t/p/w500${movieList[index].backdropPath}"),
                                  fit: BoxFit.cover))),
                    ],
                  ),
                  widthbox(width: 10.0),
                  SizedBox(
                    width: (size.width - 36) * 0.4,
                    child: Text(
                      movieList[index].title!,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ]),
              ),
              SizedBox(
                width: (size.width - 36) * 0.2,
                height: 80,
                child: const Icon(
                  Icons.play_circle_outline,
                  color: Colors.white,
                  size: 35,
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
