import 'package:flutter/material.dart';

import '../../album_view/album_view.dart';
import '../home.dart';

class BestOfArtists extends StatelessWidget {
  const BestOfArtists({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: (artistPlaylist.length - 1 == index)
          ? const EdgeInsets.only(right: 0)
          : const EdgeInsets.only(right: 16),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AlbumPage()),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              artistPlaylist[index].image,
              width: 150,
              height: 150,
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                width: 150,
                child: Text(
                  artistPlaylist[index].title,
                  style: Theme.of(context).textTheme.caption,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )),
          ],
        ),
      ),
    );
  }
}
