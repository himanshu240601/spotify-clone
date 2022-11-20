import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PremiumPage extends StatefulWidget{
  @override
  _PremiumPageState createState() => _PremiumPageState();
}

class _PremiumPageState extends State<PremiumPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
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
              ),
            ),
            SafeArea(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: const[
                        FaIcon(FontAwesomeIcons.spotify, size: 18),
                        SizedBox(width: 6,),
                        Text("Premium", style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                    const SizedBox(height: 120,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: const BoxDecoration(
                              color: Colors.white38
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(Icons.circle, color: Colors.blue, size: 8,),
                              SizedBox(width: 4,),
                              Text(
                                "LIMITED TIME OFFER",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 8, bottom: 12),
                          width: MediaQuery.of(context).size.width,
                          child: const Text(
                              "Get 3 months of\nPremium Student for Rs.0",
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold
                              )
                          ),
                        ),
                        ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(MediaQuery.of(context).size.width, 54),
                                elevation: 0,
                                primary: Colors.white,
                                onPrimary: Colors.black,
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(30))
                                )
                            ),
                            child: const Text("GET 3 MONTHS FREE")
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 14, bottom: 20),
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Offer available only to students at accredited higher education institutions who haven't already tried Premium. Rs.59/month after. Terms and conditions apply. Offer ends 9/11/22.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 11,
                                color: Colors.white.withOpacity(0.8),
                              fontWeight: FontWeight.w300
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
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
                              fontSize: 16,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          const SizedBox(height: 20,),
                          for(var i=0;i<5;i++) WhyJoinPremium(index: i)
                        ],
                      ),
                    ),
                    const SizedBox(height: 28,),
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
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            "CURRENT PLAN",
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.white.withOpacity(0.8),
                                  fontWeight: FontWeight.w500
                              )
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 28,),
                    Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xff007f32),
                              Color(0xff00b841),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(
                                width: 125,
                                child: Text(
                                  "Premium Individual",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Text(
                                    "Rs.0",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  const SizedBox(height: 4,),
                                  Text(
                                    "FOR 3 MONTHS",
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
                                "Ad-free music listening • Download to listen offline • Debit and credit cards accepted",
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
                                  fixedSize: Size(MediaQuery.of(context).size.width*.7, 54),
                                  elevation: 0,
                                  primary: Colors.white,
                                  onPrimary: Colors.black,
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.bold
                                  ),
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(30))
                                  )
                              ),
                              child: const Text("TRY 3 MONTHS FREE")
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              "Individual plan only. Rs.119/month after. Open only to users who haven't already tried Premium. Terms and conditions apply. Offer ends 9/11/22.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.white.withOpacity(0.8)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 28,),
                    Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xffd9bb00),
                              Color(0xffb69e00)
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(
                                width: 125,
                                child: Text(
                                  "Premium Student",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Text(
                                    "Rs.0",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    "FOR 3 MONTHS",
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
                                "Ad-free music listening • Download to listen offline • Debit and credit cards accepted",
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
                                  fixedSize: Size(MediaQuery.of(context).size.width*.7, 54),
                                  elevation: 0,
                                  primary: Colors.white,
                                  onPrimary: Colors.black,
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.bold
                                  ),
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(30))
                                  )
                              ),
                              child: const Text("TRY 3 MONTHS FREE")
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              "Offer available only to students at accredited higher education institutions who haven't already tried Premium. Rs.59/month after. Terms and conditions apply. Offer ends 9/11/22.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.white.withOpacity(0.8)
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List join_premium = [
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
          const Icon(Icons.check, color: Colors.green, size: 20,),
          const SizedBox(width: 8,),
          Text(
            join_premium[index],
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
    );
  }
}