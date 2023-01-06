import 'package:flutter/material.dart';
import 'package:spotify_clone/views/home_view/inner_pages/history/history.dart';
import 'package:spotify_clone/views/home_view/inner_pages/notifications/notifications.dart';
import 'package:spotify_clone/views/home_view/inner_pages/settings/settings.dart';
import 'package:spotify_clone/views/home_view/widgets/best_of_artists.dart';
import 'package:spotify_clone/views/home_view/widgets/most_played.dart';
import 'package:spotify_clone/views/home_view/widgets/recently_played.dart';
import 'package:spotify_clone/views/home_view/widgets/recommended_for_today.dart';
import 'models/MostPlayedModel.dart';
import 'models/PopularAlbumsModel.dart';

List<MostPlayedModel> mostPlayed = [
  MostPlayedModel('Vikram (Original Background Score)', 'https://i.scdn.co/image/ab67616d0000b273b0fe43ced529df9e3892ddc5'),
  MostPlayedModel('Hot Hits Punjabi', 'https://i.scdn.co/image/ab67706f0000000379f1bcb733388f2d7c0acb03'),
  MostPlayedModel('Top Gun: Maverick (Music From The Motion Picture)', 'https://i.scdn.co/image/ab67706c0000bebbaa153ed119d5bd0510fe6d21'),
  MostPlayedModel('Despicable Me 2 (Original Motion Picture Soundtrack)', 'https://i.scdn.co/image/ab67616d0000b2737d15f4754a70b55dac6cd56e'),
  MostPlayedModel('Despicable Me 3 (Original Motion Picture Soundtrack)', 'https://i.scdn.co/image/ab67616d0000b273b4910b03d64de42d39df86e8'),
  MostPlayedModel('Vikram (Original Motion Picture Soundtrack', 'https://i.scdn.co/image/ab67616d00001e0239fe640ab73db368eeac0f90'),
];

List<MostPlayedModel> recentPlayed = [
  MostPlayedModel('Top Gun: Maverick (Music From The Motion Picture', 'https://i.scdn.co/image/ab67706c0000bebbaa153ed119d5bd0510fe6d21'),
  MostPlayedModel('Hot Hits Punjabi', 'https://i.scdn.co/image/ab67706f0000000379f1bcb733388f2d7c0acb03'),
  MostPlayedModel('Despicable Me 2 (Original Motion Picture Soundtrack)', 'https://i.scdn.co/image/ab67616d0000b2737d15f4754a70b55dac6cd56e'),
  MostPlayedModel('Vikram (Original Motion Picture Soundtrack', 'https://i.scdn.co/image/ab67616d00001e0239fe640ab73db368eeac0f90'),
  MostPlayedModel('Despicable Me 3 (Original Motion Picture Soundtrack)', 'https://i.scdn.co/image/ab67616d0000b273b4910b03d64de42d39df86e8'),
];

List<MostPlayedModel> artistPlaylist = [
  MostPlayedModel('This is Charlie Puth. The essential tracks, all in one playlist.', 'https://i.scdn.co/image/ab67706f0000000323c3e7d49298b5e0f1bbf69f'),
  MostPlayedModel("Punjabi superstar's biggest hits.", 'https://i.scdn.co/image/ab67706f000000037954230cfbffff483cc4380f'),
  MostPlayedModel('The essential tracks, all in one playlist.', 'https://i.scdn.co/image/ab67706f000000037a5e5d49a4abbad5ad50c3b0'),
  MostPlayedModel("The Bollywood crooner's best songs.", 'https://i.scdn.co/image/ab67706f000000033ec51dd9c17a9add42c2e249'),
  MostPlayedModel("Listen to Selena's latest releases, plus all her essential hits.", 'https://i.scdn.co/image/ab67706f000000037cda1a881997b0bb1ca0eb92'),
];

List<PopularAlbumsModel> popularAlbums = [
  PopularAlbumsModel('Bones', 'Single • Imagine Dragons', 'https://upload.wikimedia.org/wikipedia/en/b/bb/Imagine_Dragons_Bones_cover.jpg'),
  PopularAlbumsModel('Excuses', 'Single • AP Dhillon', 'https://i.scdn.co/image/ab67616d0000b2738c02ba41ac469500b7385b4d'),
  PopularAlbumsModel("I Ain't Worried", 'Single • One Republic', 'https://i.scdn.co/image/ab67616d0000b273ec96e006b8bdfc582610ec13'),
  PopularAlbumsModel('We Rollin', 'Single • Shubh', 'https://i.scdn.co/image/ab67616d0000b273baf6c6478977c551c6f3cd0e'),
  PopularAlbumsModel('Pasoori', 'Single • Shae Gill, Ali Sethi', 'https://i.scdn.co/image/ab67616d0000b2733f3d35703bdcd917dad51c4f'),
];

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  String _greet = "Good Morning";

  @override
  Widget build(BuildContext context) {
    var hour = DateTime.now().hour;
    if(hour > 12 && hour < 18){
      _greet = "Good Afternoon";
    }else if(hour > 18){
      _greet = "Good Evening";
    }
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
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _greet,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const NotificationPage()
                                ),
                              );
                            },
                            child: const Icon(Icons.notifications_none_rounded)
                        ),
                        const SizedBox(width: 20,),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const HistoryPage()
                                ),
                              );
                            },
                            child: const Icon(Icons.history_rounded)
                        ),
                        const SizedBox(width: 20,),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const SettingsPage()
                                ),
                              );
                            },
                            child: const Icon(Icons.settings_outlined)
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    for(var i=0;i<mostPlayed.length;i+=2)Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MostPlayed(index: i),
                        const SizedBox(width: 10,),
                        MostPlayed(index: i+1)
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text("Recently played", style: Theme.of(context).textTheme.headline6,)
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for(var i=0;i<5;i++) RecentlyPlayed(index: i,)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text("Recommended for today", style: Theme.of(context).textTheme.headline6,)
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for(var i=0;i<5;i++) RecommendedForToday(index: i,)
                   ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text("Best of artists", style: Theme.of(context).textTheme.headline6,)
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for(var i=0;i<5;i++) BestOfArtists(index: i,)
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}