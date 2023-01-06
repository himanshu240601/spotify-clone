import 'package:flutter/material.dart';

import '../../../album_view/album_view.dart';
import '../../models/MostPlayedModel.dart';

List<MostPlayedModel> recentPlayed = [
  MostPlayedModel('Top Gun: Maverick (Music From The Motion Picture', 'https://i.scdn.co/image/ab67706c0000bebbaa153ed119d5bd0510fe6d21'),
  MostPlayedModel('Hot Hits Punjabi', 'https://i.scdn.co/image/ab67706f0000000379f1bcb733388f2d7c0acb03'),
  MostPlayedModel('Despicable Me 2 (Original Motion Picture Soundtrack)', 'https://i.scdn.co/image/ab67616d0000b2737d15f4754a70b55dac6cd56e'),
  MostPlayedModel('Vikram (Original Motion Picture Soundtrack', 'https://i.scdn.co/image/ab67616d00001e0239fe640ab73db368eeac0f90'),
  MostPlayedModel('Despicable Me 3 (Original Motion Picture Soundtrack)', 'https://i.scdn.co/image/ab67616d0000b273b4910b03d64de42d39df86e8'),
];

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: const BoxDecoration(
              color: Color(0x005858c4)
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: const Text("Recently played", style: TextStyle(
            fontSize: 16
        ),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30,),
              const Text("Today's", style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
              ),),
              const SizedBox(height: 20,),
              for(int index=0;index<recentPlayed.length;index++)
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AlbumPage(s: recentPlayed[index].image,title: recentPlayed[index].title,)),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Image.network(recentPlayed[index].image,
                          width: 64, height: 64,),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: MediaQuery.of(context).size.width*.6,
                                child: Text(
                                  recentPlayed[index].title, style: Theme.of(context).textTheme.titleSmall,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                )
                            ),
                            const SizedBox(height: 4,),
                            Text("Playlist • Spotify", style: TextStyle(
                              fontSize: 13,
                              color: Colors.white.withOpacity(.7)
                            ),)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
