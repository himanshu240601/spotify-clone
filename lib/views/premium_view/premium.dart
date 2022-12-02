import 'package:flutter/material.dart';
import 'package:spotify_clone/views/premium_view/widgets/card_widget.dart';
import 'package:spotify_clone/views/premium_view/widgets/sliver_delegate.dart';

import 'models/spotify_plans_model.dart';

class PremiumPage extends StatefulWidget {
  const PremiumPage({super.key});

  @override
  _PremiumPageState createState() => _PremiumPageState();
}

List<SpotifyPlansModel> cardModelList = [
  SpotifyPlansModel(
      "Mini",
      "From ₹7",
      "FOR 1 DAY",
      "1 day and 1 week plans • Ad-free music on mobile • Download 30 songs on 1 mobile device • Mobile only plan",
      "VIEW PLANS",
      "Prices vary according to duration of plan.\nTerms and conditions apply.",
      const Color(0xFF5193eb),
      const Color(0xFF2e47bb)),
  SpotifyPlansModel(
      "Premium Individual",
      "₹0",
      "FOR 3 MONTHS",
      "Ad-free music listening • Download to listen offline • Unlimited skips • On-demand playback • Cancel anytime",
      "TRY 3 MONTHS FREE",
      "Individual plan only. ₹119/month after. Terms and conditions apply. Open only to users who haven't already tried Premium. Offer ends 12/31/22.",
      const Color(0xFF055a47),
      const Color(0xFF17b673)),
  SpotifyPlansModel(
      "Premium Duo",
      "Free",
      "FOR 1 MONTH",
      "2 Premium accounts • For couples who live together • Ad-free music listening • Download 10,000 songs/device, on up to 5 devices per account • Choose 1, 3, 6 or 12 months of Premium • Debit and credit cards accepted",
      "VIEW PLANS",
      "Offer only for users who are new to Premium. Terms and conditions apply.",
      const Color(0xFF5990c0),
      const Color(0xFF404179)),
  SpotifyPlansModel(
      "Premium Family",
      "Free",
      "FOR 1 MONTH",
      "Ad-free music listening • Choose 1, 3, 6 or 12 months of Premium • Debit and credit cards accepted",
      "VIEW PLANS",
      "Offer only for users who are new to Premium. Terms and conditions apply.",
      const Color(0xFF1e3268),
      const Color(0xFFaa2798)),
  SpotifyPlansModel(
      "Premium Student",
      "Free",
      "FOR 1 MONTH",
      "Ad-free music listening • Download to listen offline",
      "VIEW PLANS",
      "Offer available only to students at an accredited higher education institution. Terms and conditions apply.",
      const Color(0xFFf49924),
      const Color(0xFFc97e54)),
];

class _PremiumPageState extends State<PremiumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              delegate: DetailSliverDelegate(
                  expandedHeight: 340, roundedContainerHeight: 10)),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white,
                          fixedSize:
                              Size(MediaQuery.of(context).size.width, 54),
                          elevation: 0,
                          textStyle:
                              const TextStyle(fontWeight: FontWeight.bold),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)))),
                      child: const Text("GET 3 MONTHS FREE")),
                  Container(
                    padding: const EdgeInsets.only(top: 14, bottom: 20),
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "Individual plan only. ₹119/month after. Terms and conditions apply. Open only to users who haven't tried Premium. Offer ends 12/31/22.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.white.withOpacity(0.8),
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Why join Premium?",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        for (var i = 0; i < 5; i++) WhyJoinPremium(index: i)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Text(
                          "Spotify Free",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text("CURRENT PLAN",
                            style: TextStyle(
                                fontSize: 11,
                                color: Colors.white.withOpacity(0.8),
                                fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  const Text(
                    "Pick your plan",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  for (var i = 0; i < cardModelList.length; i++)
                    CardView(
                      spotifyPlansModel: cardModelList[i],
                    )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

List joinPremium = [
  "Download to listen offline without wifi",
  "Music without ad interruptions",
  "2x higher sound quality than our free plan",
  "Play songs in any order, with unlimited skips",
  "Cancel monthly plans online anytime"
];

class WhyJoinPremium extends StatelessWidget {
  const WhyJoinPremium({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.check,
            color: Colors.green,
            size: 20,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            joinPremium[index],
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
    );
  }
}
