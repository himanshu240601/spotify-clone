import 'package:flutter/material.dart';
import 'package:spotify_clone/models/MostPlayedModel.dart';
import '../models/PopularAlbumsModel.dart';

List<MostPlayedModel> most_played_model = [
  MostPlayedModel('Vikram (Original Background Score)', 'https://i.scdn.co/image/ab67616d0000b273b0fe43ced529df9e3892ddc5'),
  MostPlayedModel('Hot Hits Punjabi', 'https://i.scdn.co/image/ab67706f0000000379f1bcb733388f2d7c0acb03'),
  MostPlayedModel('Top Gun: Maverick (Music From The Motion Picture)', 'https://i.scdn.co/image/ab67706c0000bebbaa153ed119d5bd0510fe6d21'),
  MostPlayedModel('Despicable Me 2 (Original Motion Picture Soundtrack)', 'https://i.scdn.co/image/ab67616d0000b2737d15f4754a70b55dac6cd56e'),
  MostPlayedModel('Despicable Me 3 (Original Motion Picture Soundtrack)', 'https://i.scdn.co/image/ab67616d0000b273b4910b03d64de42d39df86e8'),
  MostPlayedModel('Vikram (Original Motion Picture Soundtrack', 'https://i.scdn.co/image/ab67616d00001e0239fe640ab73db368eeac0f90'),
];

List<MostPlayedModel> recent_played_model = [
  MostPlayedModel('Top Gun: Maverick (Music From The Motion Picture', 'https://i.scdn.co/image/ab67706c0000bebbaa153ed119d5bd0510fe6d21'),
  MostPlayedModel('Hot Hits Punjabi', 'https://i.scdn.co/image/ab67706f0000000379f1bcb733388f2d7c0acb03'),
  MostPlayedModel('Despicable Me 2 (Original Motion Picture Soundtrack)', 'https://i.scdn.co/image/ab67616d0000b2737d15f4754a70b55dac6cd56e'),
  MostPlayedModel('Vikram (Original Motion Picture Soundtrack', 'https://i.scdn.co/image/ab67616d00001e0239fe640ab73db368eeac0f90'),
  MostPlayedModel('Despicable Me 3 (Original Motion Picture Soundtrack)', 'https://i.scdn.co/image/ab67616d0000b273b4910b03d64de42d39df86e8'),
];

List<MostPlayedModel> artist_playlist_model = [
  MostPlayedModel('This is Charlie Puth. The essential tracks, all in one playlist.', 'https://i.scdn.co/image/ab67706f0000000323c3e7d49298b5e0f1bbf69f'),
  MostPlayedModel("Punjabi superstar's biggest hits.", 'https://i.scdn.co/image/ab67706f000000037954230cfbffff483cc4380f'),
  MostPlayedModel('The essential tracks, all in one playlist.', 'https://i.scdn.co/image/ab67706f000000037a5e5d49a4abbad5ad50c3b0'),
  MostPlayedModel("The Bollywood crooner's best songs.", 'https://i.scdn.co/image/ab67706f000000033ec51dd9c17a9add42c2e249'),
  MostPlayedModel("Listen to Selena's latest releases, plus all her essential hits.", 'https://i.scdn.co/image/ab67706f000000037cda1a881997b0bb1ca0eb92'),
];

List<PopularAlbumsModel> popular_albums_model = [
  PopularAlbumsModel('Kesariya (From "Brahmastra")', 'Single • Pritam, Arijit Singh, Amitabh Bhattacharya', 'https://i.scdn.co/image/ab67616d0000b273c08202c50371e234d20caf62'),
  PopularAlbumsModel('Excuses', 'Single • AP Dhillon', 'https://i.scdn.co/image/ab67616d0000b2738c02ba41ac469500b7385b4d'),
  PopularAlbumsModel("I Ain't Worried", 'Single • One Republic', 'https://i.scdn.co/image/ab67616d0000b273ec96e006b8bdfc582610ec13'),
  PopularAlbumsModel('We Rollin', 'Single • Shubh', 'https://i.scdn.co/image/ab67616d0000b273baf6c6478977c551c6f3cd0e'),
  PopularAlbumsModel('Pasoori', 'Single • Shae Gill, Ali Sethi', 'https://i.scdn.co/image/ab67616d0000b2733f3d35703bdcd917dad51c4f'),
];

class HomePage extends StatefulWidget{
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
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _greet,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Row(
                      children: const [
                        Icon(Icons.notifications_none_rounded),
                        SizedBox(width: 20,),
                        Icon(Icons.history_rounded),
                        SizedBox(width: 20,),
                        Icon(Icons.settings_outlined),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        MostPlayed(index: 0),
                        SizedBox(width: 10,),
                        MostPlayed(index: 1)
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        MostPlayed(index: 2),
                        SizedBox(width: 10,),
                        MostPlayed(index: 3)
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        MostPlayed(index: 4),
                        SizedBox(width: 10,),
                        MostPlayed(index: 5)
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
                    for(var i=0;i<5;i++) PopularAlbums(index: i,)
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
                    for(var i=0;i<5;i++) ArtistAlbums(index: i,)
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

class RecentlyPlayed extends StatelessWidget{
  const RecentlyPlayed({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: (recent_played_model.length-1==index) ? const EdgeInsets.only(right: 0) : const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(recent_played_model[index].image,
            width: 125, height: 125,),
          const SizedBox(height: 10,),
          SizedBox(
              width: 125,
              child: Text(
                recent_played_model[index].title, style: Theme.of(context).textTheme.titleSmall,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              )
          ),
        ],
      ),
    );
  }
}

class MostPlayed extends StatelessWidget{
  const MostPlayed({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white12,
            borderRadius: BorderRadius.circular(8)
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Image.network(most_played_model[index].image, height: 54, width: 54, fit: BoxFit.cover,),
            const SizedBox(width: 8,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Text(
                  most_played_model[index].title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ArtistAlbums extends StatelessWidget{
  const ArtistAlbums({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: (artist_playlist_model.length-1==index) ? const EdgeInsets.only(right: 0) : const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(artist_playlist_model[index].image,
            width: 150, height: 150,),
          const SizedBox(height: 10,),
          SizedBox(
              width: 150,
              child: Text(
                artist_playlist_model[index].title, style: Theme.of(context).textTheme.caption,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              )
          ),
        ],
      ),
    );
  }
}

class PopularAlbums extends StatelessWidget{
  const PopularAlbums({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: (popular_albums_model.length-1==index) ? const EdgeInsets.only(right: 0) : const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(popular_albums_model[index].image,
            width: 150, height: 150,),
          const SizedBox(height: 10,),
          SizedBox(
            width: 150,
              child: Text(
                popular_albums_model[index].title, style: Theme.of(context).textTheme.titleSmall,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
          ),
          const SizedBox(height: 4,),
          SizedBox(
            width: 150,
              child: Text(
                popular_albums_model[index].caption, style: Theme.of(context).textTheme.caption,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
          )
        ],
      ),
    );
  }
}