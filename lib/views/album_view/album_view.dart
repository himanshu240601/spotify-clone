import 'package:flutter/material.dart';
import 'package:spotify_clone/views/album_view/widgets/sliver_delegate.dart';


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
                  for(var i=0;i<10;i++) Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.network('https://i.scdn.co/image/ab67616d0000b273d304ba2d71de306812eebaf4', width: 54,),
                            const SizedBox(width: 12,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Night Changes", style: TextStyle(
                                  fontSize: 16
                                )),
                                const SizedBox(height: 4,),
                                Text("One Direction", style: TextStyle(
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
