import 'package:flutter/material.dart';
import 'package:spotify_clone/views/home_view/inner_pages/notifications/models/notification_model.dart';

List<NotificationModel> notificationAlerts = [
  NotificationModel("Trending now: Harry Styles", "Listen to the top songs on the Today's Top Hits playlist", 'https://i.scdn.co/image/ab67616d0000b273a800a049d4a54c6fd3a328f9', "3 days ago"),
  NotificationModel("What's your top genre?", "Tap to find out, and then dive into the key artists and playlists", 'https://images.genius.com/9981be1fb5fa67fb8ba50d3f54b7b73e.640x640x1.jpg', "28 Dec"),
  NotificationModel("Ready to work out?", "We've got the perfect playlist for you.", "https://upload.wikimedia.org/wikipedia/en/b/bb/Imagine_Dragons_Bones_cover.jpg", "23 Dec"),
];

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: const BoxDecoration(
                    color: Color(0x005858c4)
                ),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              const SizedBox(height: 10.0,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*.9,
                      child: const Text(
                        "What's New",
                        overflow: TextOverflow.fade,
                        softWrap: false,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*.9,
                      child: Text(
                        "The latest releases from artists, podcasts, and shows you follow.",
                        maxLines: 2,
                        style: TextStyle(color: Colors.white.withOpacity(.7)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 14.0,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("New", style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),),
              ),
              for(var i=0;i<notificationAlerts.length;i++) Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.network(notificationAlerts[i].image, width: 84,),
                            const SizedBox(width: 12,),
                            SizedBox(
                              width: MediaQuery.of(context).size.width*.6,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(notificationAlerts[i].time, style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white.withOpacity(.7)
                                  ),),
                                  const SizedBox(height: 10,),
                                  Text(notificationAlerts[i].title, style: const TextStyle(
                                      fontSize: 16
                                  )),
                                  const SizedBox(height: 4,),
                                  Text("Spotify notification", style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white.withOpacity(.7)
                                  ))
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width*.8,
                          child: Text(notificationAlerts[i].caption, style: TextStyle(
                              fontSize: 12,
                              color: Colors.white.withOpacity(.7)
                          )),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
