import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailSliverDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final double roundedContainerHeight;

  DetailSliverDelegate(
      {required this.expandedHeight, required this.roundedContainerHeight});

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 160;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (rect) {
            return const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Colors.transparent],
            ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
          },
          blendMode: BlendMode.dstIn,
          child: Image.network(
            'https://i.pinimg.com/originals/9a/f0/21/9af02143a095506f4d6f9433bc122fb0.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: expandedHeight,
          ),
        ),
        SafeArea(
            child: Container(
                padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                child: Stack(children: [
                  Positioned(
                    top: 0,
                    child: Row(
                      children: const [
                        FaIcon(FontAwesomeIcons.spotify, size: 18),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "Premium",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.circle,
                              color: Colors.blue,
                              size: 8,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "LIMITED TIME OFFER",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            top: 8,
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: const Text("Get 3 months of\nPremium for ₹0",
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                ])))
      ],
    );
  }
}
