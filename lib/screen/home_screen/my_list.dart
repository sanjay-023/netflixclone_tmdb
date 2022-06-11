import 'package:flutter/material.dart';
import 'package:netflixclone/Api/api.dart';
import 'package:netflixclone/movie_details/movie_details.dart';
import 'package:netflixclone/screen/home_screen/detail_screen.dart';

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  List<MovieDetails> movieList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    populateAllMovie();
  }

  void populateAllMovie() async {
    final movies = await fetchAllMovie(category: 'now_playing');
    setState(() {
      movieList = movies;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: List.generate(movieList.length, (index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                  return DetailScreen(
                    mvdetails:
                        "https://image.tmdb.org/t/p/w500${movieList[index].backdropPath}",
                    mvDescription: movieList[index].overview!,
                    mvTitle: movieList[index].title!,
                  );
                }));
              },
              child: Container(
                margin: const EdgeInsets.only(right: 8),
                height: 160,
                width: 110,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "https://image.tmdb.org/t/p/w500${movieList[index].posterPath}",
                      fit: BoxFit.cover,
                      frameBuilder:
                          (context, child, frame, wasSynchronouslyLoaded) {
                        return child;
                      },
                      loadingBuilder: (ctx, child, loading) {
                        if (loading == null) {
                          return child;
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(
                              color: Color.fromARGB(255, 234, 20, 4),
                            ),
                          );
                        }
                      },
                    )),
              ),
            );
          }),
        ),
      ),
    );
  }
}
