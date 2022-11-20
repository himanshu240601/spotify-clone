import 'package:flutter/material.dart';
import '../models/SearchCardModel.dart';

List<SearchCardModel> search_card_top = [
  SearchCardModel('Pop', 'https://images.genius.com/9981be1fb5fa67fb8ba50d3f54b7b73e.640x640x1.jpg', 0xff48acf0),
  SearchCardModel('Bollywood', 'https://i.scdn.co/image/ab67706f00000003fbeeccdab429f7c9632d7bcf', 0xffed2a15),
  SearchCardModel('Hip-Hop', 'https://i.scdn.co/image/ab67706f0000000305949f1fa395a0cb49f865ae', 0xffeb9113),
  SearchCardModel('Folk & Acoustic', 'https://i.scdn.co/image/ab67616d00001e0229835b6018d84756c4396ba1', 0xff7b4c42),
];

List<SearchCardModel> search_card_all = [
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
                    padding: EdgeInsets.only(left: 20, top: 20),
                    child: Text("Your top genres", style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ))
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          SearchCards(index: 0, cardId: 1,),
                          SizedBox(width: 20,),
                          SearchCards(index: 1, cardId: 1,)
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          SearchCards(index: 2, cardId: 1,),
                          SizedBox(width: 20,),
                          SearchCards(index: 3, cardId: 1,)
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Text("Browse all", style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),)
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          SearchCards(index: 0, cardId: 0,),
                          SizedBox(width: 20,),
                          SearchCards(index: 1, cardId: 0,)
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          SearchCards(index: 2, cardId: 0,),
                          SizedBox(width: 20,),
                          SearchCards(index: 3, cardId: 0,)
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          SearchCards(index: 4, cardId: 0,),
                          SizedBox(width: 20,),
                          SearchCards(index: 5, cardId: 0,)
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          SearchCards(index: 6, cardId: 0,),
                          SizedBox(width: 20,),
                          SearchCards(index: 7, cardId: 0,)
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          SearchCards(index: 8, cardId: 0,),
                          SizedBox(width: 20,),
                          SearchCards(index: 9, cardId: 0,)
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

class SearchCards extends StatelessWidget{
  const SearchCards({Key? key, required this.index, required this.cardId}) : super(key: key);

  final int index;
  final int cardId;

  @override
  Widget build(BuildContext context) {
    List<SearchCardModel> searchCardsList = (cardId==1)? search_card_top : search_card_all;
    return Expanded(
      flex: 1,
      child: Container(
        height: 90,
        decoration: BoxDecoration(
            color: Color(searchCardsList[index].color),
            borderRadius: BorderRadius.circular(8)
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12, top: 16),
                child: Text(
                    searchCardsList[index].title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.titleSmall
                ),
              ),
            ),
            const SizedBox(width: 8,),
            Transform.rotate(
              alignment: const Alignment(-1,1),
                angle: 35 * 3.14 / 180,
                child: Image.network(
                    searchCardsList[index].image, height: 64, width: 64, fit: BoxFit.cover,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}