import 'dart:ui';
import 'models/song.dart';
import 'package:flutter/material.dart';
import 'package:reto_1/utils/custom_colors.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  List getSongList() {
    List<Song> songList = [];
    songList.add(Song("No tears left to  cry", "05:20"));
    songList.add(Song("Imagine", "03:20"));
    songList.add(Song("Into you", "04:12"));
    songList.add(Song("One last time", "05:20"));
    songList.add(Song("Just look up", "03:27"));
    songList.add(Song("pov", "03:22"));
    songList.add(Song("34+35", "03:41"));
    return songList;
  }

  @override
  Widget build(BuildContext context) {
    List songList = getSongList();
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: const Drawer(
        child: Padding(
          padding: EdgeInsets.all(32.0),
          child: Text("Sup!"),
        ), // Populate the Drawer in the next step.
      ),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.info_outline_rounded),
            onPressed: () {},
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: albumSceenBody(mediaQuery, songList),
    );
  }
}

Widget albumSceenBody(MediaQueryData mediaQuery, songList) {
  return Column(
    children: [
      albumCover(mediaQuery),
      albumSongList(mediaQuery, songList),
    ],
  );
}

Widget albumCover(MediaQueryData mediaQuery) {
  return Expanded(
    flex: 45,
    child: Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/cover.jpg"), fit: BoxFit.cover),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(48.0),
            ),
          ),
        ),
        albumAutor(),
        playButton(),
      ],
    ),
  );
}

Widget playButton() {
  return Positioned(
    bottom: 54 / -2,
    right: 32,
    child: FloatingActionButton(
      elevation: 0,
      backgroundColor: CustomColors.primary,
      child: const Icon(
        Icons.play_arrow,
        color: Colors.white,
      ),
      onPressed: () {},
    ),
  );
}

Widget albumAutor() {
  return Padding(
    padding: const EdgeInsets.all(32.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Tranding",
          style: TextStyle(
            color: CustomColors.primary,
            fontWeight: FontWeight.w500,
            fontFamily: "Roboto",
            fontSize: 16,
          ),
        ),
        const Text(
          "Ariana",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontFamily: "Roboto",
            fontSize: 32,
          ),
        ),
        const Text(
          "Grande",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontFamily: "Roboto",
            fontSize: 32,
          ),
        ),
      ],
    ),
  );
}

Widget albumSongList(MediaQueryData mediaQuery, songList) {
  return Expanded(
    flex: 40,
    child: Container(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            albumListTitle(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (var song in songList)
                      songItem(song.getName, song.getDuration)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget albumListTitle() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 24.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "Popular",
          style: TextStyle(
            color: CustomColors.secondary,
            fontWeight: FontWeight.w600,
            fontFamily: "Roboto",
            fontSize: 24,
          ),
        ),
        Text(
          "Show all",
          style: TextStyle(
            color: CustomColors.primary,
            fontWeight: FontWeight.w500,
            fontFamily: "Roboto",
            fontSize: 16,
          ),
        ),
      ],
    ),
  );
}

Widget songItem(String songName, String songDuration) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 4.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          songName,
          style: const TextStyle(
              color: Colors.black38, fontWeight: FontWeight.w500),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              songDuration,
              style: const TextStyle(
                  color: Colors.black38, fontWeight: FontWeight.w500),
            ),
            IconButton(
              onPressed: () {},
              padding: const EdgeInsets.all(0.0),
              icon: const Icon(Icons.more_horiz, color: Colors.black38),
            )
          ],
        )
      ],
    ),
  );
}
