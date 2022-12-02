import 'package:flutter/material.dart';

import '../models/search_category_card_model.dart';
import '../search.dart';

class CardCategoryWidget extends StatelessWidget{
  const CardCategoryWidget({Key? key, required this.index, required this.cardId}) : super(key: key);

  final int index;
  final int cardId;

  @override
  Widget build(BuildContext context) {
    List<SearchCardModel> searchCardsList = (cardId==1)? userTopGenres : browseAllCategories;
    return Expanded(
      flex: 1,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        height: 100,
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