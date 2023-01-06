import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
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
        title: const Text("Settings", style: TextStyle(
          fontSize: 16
        ),),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 30,),
              const Text("Free Account", style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
              const SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, backgroundColor: Colors.white, fixedSize: Size(MediaQuery.of(context).size.width*.5, 54),
                      elevation: 0,
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      )
                  ),
                  child: const Text("Go Premium")
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100)),
                          clipBehavior: Clip.antiAlias,
                          child: Image.network(
                            'https://www.wallpapers.net/minion-hd-wallpaper/download/400x400.jpg',
                            height: 58,
                            width: 58,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 16,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Himanshu Goyal", style: TextStyle(
                                fontSize: 20
                            ),),
                            const SizedBox(height: 4,),
                            Text("View Profile", style: TextStyle(
                                fontSize: 13,
                                color: Colors.white.withOpacity(.7)
                            ),)
                          ],
                        ),
                      ],
                    ),
                    const Icon(Icons.navigate_next)
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      children:const [
                        Text("About", style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                    const SizedBox(height: 16,),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Version", style: TextStyle(
                                fontSize: 16,
                            ),),
                            Text("8.7.92.521", style: TextStyle(
                                fontSize: 12, color: Colors.white.withOpacity(.7)
                            ),)
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16,),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Third-party software", style: TextStyle(
                              fontSize: 16,
                            ),),
                            Text("Sweet software that helped us", style: TextStyle(
                                fontSize: 12, color: Colors.white.withOpacity(.7)
                            ),)
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16,),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Terms and Conditions", style: TextStyle(
                              fontSize: 16,
                            ),),
                            Text("All the stuff you need to know.", style: TextStyle(
                                fontSize: 12, color: Colors.white.withOpacity(.7)
                            ),)
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16,),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Privacy Policy", style: TextStyle(
                              fontSize: 16,
                            ),),
                            Text("Important for both of us.", style: TextStyle(
                                fontSize: 12, color: Colors.white.withOpacity(.7)
                            ),)
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16,),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Platform Rules", style: TextStyle(
                              fontSize: 16,
                            ),),
                            Text("Help keep Spotify safe for all", style: TextStyle(
                                fontSize: 12, color: Colors.white.withOpacity(.7)
                            ),)
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16,),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Support", style: TextStyle(
                              fontSize: 16,
                            ),),
                            Text("Get help from us and the community.", style: TextStyle(
                                fontSize: 12, color: Colors.white.withOpacity(.7)
                            ),)
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
