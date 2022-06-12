import 'package:flutter/material.dart';
import 'package:netflixclone/Api/api.dart';
import 'package:netflixclone/movie_details/movie_details.dart';
import 'package:netflixclone/screen/home_screen/screen_dash.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  List<MovieDetails> movieList = [];
  @override
  void initState() {
    gotologin();
    populateAllMovie();

    super.initState();
  }

  void populateAllMovie() async {
    final movies = await fetchAllMovie(category: 'now_playing');
    setState(() {
      movieList = movies;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Image.asset(
          'assets/images/logo.ico',
          width: 50,
          height: 50,
        ),
      ),
    );
  }

  Future<void> gotologin() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (ctx) => ScreenDash(
              coverimg:
                  "https://image.tmdb.org/t/p/w500${movieList[9].posterPath!}",
            )));
  }
}
