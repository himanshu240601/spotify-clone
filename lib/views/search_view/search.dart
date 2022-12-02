import 'package:flutter/material.dart';
import 'package:spotify_clone/views/search_view/widgets/card_category_widget.dart';

import 'models/search_category_card_model.dart';

List<SearchCardModel> userTopGenres = [
  SearchCardModel('Pop', 'https://images.genius.com/9981be1fb5fa67fb8ba50d3f54b7b73e.640x640x1.jpg', 0xff48acf0),
  SearchCardModel('Bollywood', 'https://i.scdn.co/image/ab67706f00000003fbeeccdab429f7c9632d7bcf', 0xffed2a15),
  SearchCardModel('Hip-Hop', 'https://i.scdn.co/image/ab67706f0000000305949f1fa395a0cb49f865ae', 0xffeb9113),
  SearchCardModel('Folk & Acoustic', 'https://i.scdn.co/image/ab67616d00001e0229835b6018d84756c4396ba1', 0xff7b4c42),
];

List<SearchCardModel> browseAllCategories = [
  SearchCardModel('New Releases', 'https://i.scdn.co/image/ab67706f00000003a86caecbc52620f66b40b82d', 0xfff09129),
  SearchCardModel('Charts', 'https://charts-images.scdn.co/assets/locale_en/regional/weekly/region_global_large.jpg', 0xffa71ce8),
  SearchCardModel('Made for You', 'https://i.scdn.co/image/ab67706f00000003c7a1ff7b6214f0d6dc8db990', 0xffffa5af),
  SearchCardModel('At Home', 'https://i.scdn.co/image/ab67706f00000003d8719001db822961551b017c', 0xff01d28e),
  SearchCardModel('Punjabi', 'https://i.scdn.co/image/ab67706f0000000347c8211accd028551f7d9d30', 0xffba0028),
  SearchCardModel('Tamil', 'https://i.scdn.co/image/ab67706f0000000389dfcfc3ea8e0c6be824f844', 0xffea591c),
  SearchCardModel('Telugu', 'https://i.scdn.co/image/ab67706f00000003e427be2a946cca72fa54553d', 0xffdc860f),
  SearchCardModel('Indie', 'https://i.scdn.co/image/ab67706f000000039c519f16d867b6643d42db3a', 0xff584d5e),
  SearchCardModel('Gaming', 'https://i.scdn.co/image/ab67706f0000000221a2087747d946f16704b8af', 0xff006167),
  SearchCardModel('Party', 'https://i.scdn.co/image/ab67706f0000000376ae07d8463069e567220633', 0xff98a0f3),
];

class SearchPage extends StatefulWidget{
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>{
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
                  child: Text(
                    "Search",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16
                    ),
                    cursorColor: Colors.black87,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.95),
                      border: InputBorder.none,
                      hintText: 'What do you want to listen to?',
                      hintStyle: const TextStyle(
                        color: Colors.black87,
                        fontSize: 16
                      ),
                      prefixIcon: const Icon(Icons.search_rounded, color: Colors.black87,),
                    ),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 20, top: 30),
                    child: Text("Your top genres", style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ))
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      for(var i=0;i<userTopGenres.length;i+=2) Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                        CardCategoryWidget(index: i, cardId: 1),
                        const SizedBox(width: 12,),
                        CardCategoryWidget(index: i+1, cardId: 1,)
                      ],),
                    ],
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Browse all", style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),)
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      for(var i=0;i<browseAllCategories.length;i+=2) Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CardCategoryWidget(index: i, cardId: 0,),
                          const SizedBox(width: 12,),
                          CardCategoryWidget(index: i+1, cardId: 0,)
                        ],
                      ),
                    ],
                  )
                ),
              ]
          ),
        ),
      ),
    );
  }
}