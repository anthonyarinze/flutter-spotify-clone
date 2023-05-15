import 'package:flutter/material.dart';
import 'package:spotify_clone/components/Recently_Played.dart';
import 'package:spotify_clone/components/album_cover.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

String getGreeting() {
  DateTime now = DateTime.now();
  int hour = now.hour;

  if (hour >= 5 && hour < 12) {
    return 'Good Morning';
  } else if (hour >= 12 && hour < 17) {
    return 'Good Afrernoon';
  } else {
    return 'Good evening';
  }
}

List<Widget> items = [
  const Icon(Icons.home),
  const Icon(Icons.home),
  const Icon(Icons.home),
  const Icon(Icons.home),
  const Icon(Icons.home),
  const Icon(Icons.home),
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      getGreeting(),
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: size.width / 2.6,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.notifications_none_outlined, size: 30),
                          Icon(Icons.access_time_outlined, size: 30),
                          Icon(Icons.settings_outlined, size: 30),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: size.width,
                height: size.height / 3,
                child: GridView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 10.0,
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 18.0,
                    crossAxisSpacing: 8.0,
                    childAspectRatio: 3.0,
                  ),
                  children: const [
                    RecentlyPlayed(),
                    RecentlyPlayed(),
                    RecentlyPlayed(),
                    RecentlyPlayed(),
                    RecentlyPlayed(),
                    RecentlyPlayed(),
                  ],
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Recently Played",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AlbumCover(
                      coverUrl:
                          'https://fastly.picsum.photos/id/1032/300/300.jpg?hmac=wlgDborxXSAhrCFvLKgXejeB5gt5CHR908trwFo84Nw',
                      name: 'My Album',
                      artist: 'John Doe',
                      isAlbum: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
