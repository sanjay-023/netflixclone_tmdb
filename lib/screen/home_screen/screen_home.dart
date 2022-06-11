import 'package:flutter/material.dart';
import 'package:netflixclone/Api/api.dart';
import 'package:netflixclone/common_widget/common_widgets.dart';
import 'package:netflixclone/movie_details/movie_details.dart';
import 'package:netflixclone/screen/home_screen/category_widget.dart';
import 'package:netflixclone/screen/home_screen/gradient.dart';
import 'package:netflixclone/screen/home_screen/home_button.dart';
import 'package:netflixclone/screen/home_screen/my_list.dart';
import 'package:netflixclone/screen/home_screen/popular.dart';
import 'package:netflixclone/screen/home_screen/trending.dart';

class ScreenHome extends StatefulWidget {
  final String coverImg;
  const ScreenHome({required this.coverImg, Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
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
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              width: size.height - 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 500,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            image: DecorationImage(
                                image: NetworkImage(
                                  widget.coverImg,
                                ),
                                fit: BoxFit.cover)),
                      ),
                      const GradientWidget()
                    ],
                  ),
                  const HomeButton(),
                  heightbox(height: 40.0),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: const [
                            Text(
                              'Now Playing',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      heightbox(height: 10.0),
                      const MyList(),
                      heightbox(height: 30.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: const [
                            Text(
                              'Trending',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      heightbox(height: 10.0),
                      const TrendingWidget(),
                      heightbox(height: 30.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: const [
                            Text(
                              'Popular On Netflix',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      heightbox(height: 10.0),
                      const PopularWidget(),
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: SafeArea(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/logo.ico',
                            width: 35,
                            fit: BoxFit.cover,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.collections_bookmark,
                                    color: Colors.white,
                                    size: 26,
                                  )),
                              widthbox(width: 3.0),
                              InkWell(
                                onTap: () {},
                                child: Image.asset(
                                  'assets/images/netflixavatar.png',
                                  width: 26,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    heightbox(height: 15.0),
                    const CategoryWidget(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
