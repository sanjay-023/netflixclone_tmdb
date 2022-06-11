import 'package:flutter/material.dart';
import 'package:netflixclone/Api/api.dart';
import 'package:netflixclone/common_widget/common_widgets.dart';
import 'package:netflixclone/movie_details/movie_details.dart';

class ComingTileWidget extends StatefulWidget {
  const ComingTileWidget({Key? key}) : super(key: key);

  @override
  State<ComingTileWidget> createState() => _ComingTileWidgetState();
}

class _ComingTileWidgetState extends State<ComingTileWidget> {
  List<MovieDetails> movieList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    populateAllMovie();
  }

  void populateAllMovie() async {
    final movies = await fetchAllMovie(category: 'upcoming');
    setState(() {
      movieList = movies;
    });
  }

  @override
  Widget build(BuildContext context) {
    return movieList.isEmpty
        ? const Center(
            child: CircularProgressIndicator(
            color: Color.fromARGB(255, 227, 21, 6),
          ))
        : Column(
            children: List.generate(movieList.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Column(
                children: [
                  SizedBox(
                      height: 220,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://image.tmdb.org/t/p/w500${movieList[index].backdropPath}"),
                                    fit: BoxFit.cover)),
                          )
                        ],
                      )),
                  heightbox(height: 15.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              width: 250,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                ),
                                child: Text(
                                  movieList[index].title!,
                                  // maxLines: 2,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(children: [
                          Column(
                            children: [
                              const Icon(
                                Icons.notifications_outlined,
                                color: Colors.white,
                              ),
                              heightbox(height: 5.0),
                              const Text(
                                'Remind me',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              )
                            ],
                          ),
                          widthbox(width: 20.0),
                          Column(
                            children: [
                              const Icon(
                                Icons.info_outline,
                                color: Colors.white,
                              ),
                              heightbox(height: 5.0),
                              const Text(
                                'info',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              )
                            ],
                          )
                        ])
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text(movieList[index].releaseDate!,
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.4))),
                      ],
                    ),
                  ),
                  heightbox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      movieList[index].overview!,
                      style: TextStyle(color: Colors.white.withOpacity(0.4)),
                    ),
                  ),
                  heightbox(height: 10.0),
                  // Row(
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.symmetric(horizontal: 20),
                  //       child: Text(
                  //         comingSoonJson[index]['type'],
                  //         style: const TextStyle(color: Colors.white, fontSize: 10),
                  //       ),
                  //     ),
                  //   ],
                  // )
                ],
              ),
            );
          }));
  }
}
