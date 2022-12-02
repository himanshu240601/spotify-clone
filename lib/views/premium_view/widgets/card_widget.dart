import 'package:flutter/material.dart';
import 'package:spotify_clone/views/premium_view/models/spotify_plans_model.dart';

class CardView extends StatelessWidget {
  final SpotifyPlansModel spotifyPlansModel;
  const CardView({Key? key, required this.spotifyPlansModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.only(top: 34),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              spotifyPlansModel.colorTopLeft,
              spotifyPlansModel.colorBottomRight
            ],
          ),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 125,
                child: Text(
                  spotifyPlansModel.planTitle,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                   Text(
                    spotifyPlansModel.planPrice,
                    style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                   const SizedBox(height: 4,),
                  Text(
                      spotifyPlansModel.planDuration,
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.white.withOpacity(0.8),
                          fontWeight: FontWeight.w500
                      )
                  )
                ],
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 34, bottom: 20),
            width: MediaQuery.of(context).size.width,
            child: Text(
                spotifyPlansModel.planPerks,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white.withOpacity(0.9)
                )
            ),
          ),
          ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black, backgroundColor: Colors.white, fixedSize: Size(MediaQuery.of(context).size.width*.7, 54),
                  elevation: 0,
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))
                  )
              ),
              child: Text(spotifyPlansModel.planButtonText)
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            width: MediaQuery.of(context).size.width,
            child: Text(
              spotifyPlansModel.planInformation,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 11,
                  color: Colors.white.withOpacity(0.8)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
