import 'package:flutter/material.dart';

import '../../album_view/album_view.dart';
import '../home.dart';

class MostPlayed extends StatelessWidget{
  const MostPlayed({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const AlbumPage()),
          );
        },
        child: Container(
          margin: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
              color: Colors.white12,
              borderRadius: BorderRadius.circular(8)
          ),
          clipBehavior: Clip.antiAlias,
          child: Row(
            children: [
              Image.network(mostPlayed[index].image, height: 64, width: 54, fit: BoxFit.cover,),
              const SizedBox(width: 8,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Text(
                      mostPlayed[index].title,
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
      ),
    );
  }
}