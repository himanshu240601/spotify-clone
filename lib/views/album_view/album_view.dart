import 'package:flutter/material.dart';
import 'package:spotify_clone/views/album_view/widgets/sliver_delegate.dart';

import '../home_view/models/PopularAlbumsModel.dart';

List<PopularAlbumsModel> albumSongs = [
  PopularAlbumsModel("Destination", "Crash Adams", 'https://i.scdn.co/image/ab67616d0000b273a800a049d4a54c6fd3a328f9'),
  PopularAlbumsModel("I Ain't Worried", "One Republic", 'https://i.scdn.co/image/ab67616d0000b2730884a5ab3882152b208f506c'),
  PopularAlbumsModel("Anti-Hero", "Taylor Swift", "https://i.scdn.co/image/ab67616d0000b273bb54dde68cd23e2a268ae0f5"),
];

class AlbumPage extends StatefulWidget {
  const AlbumPage({Key? key}) : super(key: key);

  @override
  State<AlbumPage> createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
              delegate: SliverAlbumDelegate(
                  expandedHeight: 340, roundedContainerHeight: 10)),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for(var i=0;i<albumSongs.length;i++) Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.network(albumSongs[i].image, width: 54,),
                            const SizedBox(width: 12,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(albumSongs[i].title, style: const TextStyle(
                                  fontSize: 16
                                )),
                                const SizedBox(height: 4,),
                                Text(albumSongs[i].caption, style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white.withOpacity(.7)
                                ))
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.favorite, color: Color(0xff00ff00), size: 20,),
                            const SizedBox(width: 20,),
                            Icon(Icons.more_vert_outlined, color: Colors.white.withOpacity(.7),)
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
