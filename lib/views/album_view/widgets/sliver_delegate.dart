import 'package:flutter/material.dart';

class SliverAlbumDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final double roundedContainerHeight;

  SliverAlbumDelegate(
      {required this.expandedHeight, required this.roundedContainerHeight});

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 120;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff5858c4),
                Color(0xff5858c4),
                Color(0xbf5858c4),
                Color(0x005858c4),
                Color(0x005858c4),
              ],
            )),
          ),
          Positioned(
            bottom: 64,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Liked Songs",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "10 songs",
                    style: TextStyle(color: Colors.white.withOpacity(.7)),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              top: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color(0xff5858c4)
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              )),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Stack(
                children: [
                  Container(
                      margin: const EdgeInsets.only(right: 6, bottom: 6),
                      decoration: BoxDecoration(
                          color: const Color(0xff00ff00),
                          borderRadius: BorderRadius.circular(100)),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          ))),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: const Color(0xff1e1e1e),
                      radius: 12,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shuffle,
                          color: Color(0xff00ff00),
                          size: 8,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
