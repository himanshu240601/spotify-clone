import 'package:flutter/material.dart';
import 'package:spotify_clone/views/album_view/album_view.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100)),
                            clipBehavior: Clip.antiAlias,
                            child: Image.network(
                              'https://www.wallpapers.net/minion-hd-wallpaper/download/400x400.jpg',
                              height: 32,
                              width: 32,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Your Library",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.search_rounded,
                            size: 24,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.add, size: 24),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.sort_rounded,
                            size: 18,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            "Most recent",
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                      const Icon(
                        Icons.grid_view_outlined,
                        size: 18,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AlbumPage()),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Image.network(
                          'https://i1.sndcdn.com/artworks-y6qitUuZoS6y8LQo-5s2pPA-t500x500.jpg',
                          width: 64,
                          height: 64,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Liked Songs",
                                style: Theme.of(context).textTheme.titleSmall),
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Transform.rotate(
                                  angle: 45,
                                  child: const Icon(
                                    Icons.push_pin_rounded,
                                    size: 14,
                                    color: Colors.green,
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text("Playlist • 7 songs",
                                    style: Theme.of(context).textTheme.caption)
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(100)),
                        child: const Icon(
                          Icons.add_rounded,
                          size: 28,
                          color: Colors.white54,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text("Add artists",
                          style: Theme.of(context).textTheme.titleSmall),
                    ],
                  ),
                ),
                const SizedBox(height: 6),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(4)),
                        child: const Icon(
                          Icons.add_rounded,
                          size: 28,
                          color: Colors.white54,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text("Add podcasts & shows",
                          style: Theme.of(context).textTheme.titleSmall),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
