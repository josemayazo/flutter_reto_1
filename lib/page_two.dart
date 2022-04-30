import 'dart:ui';
import 'models/song.dart';
import 'package:flutter/material.dart';
import 'package:reto_1/utils/custom_colors.dart';

class PageTwo extends StatelessWidget {
  PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: albumSceenBody(mediaQuery),
    );
  }
}

Widget albumSceenBody(MediaQueryData mediaQuery) {
  return Column(
    children: [
      albumCover(mediaQuery),
      albumSongList(mediaQuery),
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

Widget albumSongList(MediaQueryData mediaQuery) {
  return Expanded(
    flex: 40,
    child: Container(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            albumListTitle(),
            Column(
              children: [
                songItem("asdw", "04:24"),
                songItem("Modelame así pose", "01:24"),
              ],
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
          style: TextStyle(color: Colors.black38, fontWeight: FontWeight.w500),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              songDuration,
              style:
                  TextStyle(color: Colors.black38, fontWeight: FontWeight.w500),
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
