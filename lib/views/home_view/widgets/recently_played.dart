import 'package:flutter/material.dart';

import '../home.dart';

class RecentlyPlayed extends StatelessWidget{
  const RecentlyPlayed({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: (recentPlayed.length-1==index) ? const EdgeInsets.only(right: 0) : const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(recentPlayed[index].image,
            width: 105, height: 105,),
          const SizedBox(height: 10,),
          SizedBox(
              width: 105,
              child: Text(
                recentPlayed[index].title, style: Theme.of(context).textTheme.titleSmall,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              )
          ),
        ],
      ),
    );
  }
}