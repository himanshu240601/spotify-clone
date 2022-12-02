import 'package:flutter/material.dart';

import '../home.dart';

class RecommendedForToday extends StatelessWidget{
  const RecommendedForToday({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: (popularAlbums.length-1==index) ? const EdgeInsets.only(right: 0) : const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(popularAlbums[index].image,
            width: 150, height: 150,),
          const SizedBox(height: 10,),
          SizedBox(
              width: 150,
              child: Text(
                popularAlbums[index].title, style: Theme.of(context).textTheme.titleSmall,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
          ),
          const SizedBox(height: 4,),
          SizedBox(
              width: 150,
              child: Text(
                popularAlbums[index].caption, style: Theme.of(context).textTheme.caption,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
          )
        ],
      ),
    );
  }
}