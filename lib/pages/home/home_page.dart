// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gallery_app/pages/Album/album_page.dart';
import 'package:gallery_app/pages/Photo/photos_page.dart';

class HomePage extends StatelessWidget {
  static const path = 'home';

  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar:
              AppBar(backgroundColor: Colors.white, elevation: .0, actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return SimpleDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24.0))),
                          backgroundColor: Color(0xFF262A34),
                          insetPadding: EdgeInsets.only(
                              top: 570, bottom: 20, left: 0, right: 0),
                          titlePadding: EdgeInsets.zero,
                          contentPadding: EdgeInsets.zero,
                          children: [
                            Container(
                              width: 350,
                              height: 175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextButton(
                                          onPressed: (){},
                                          child: MyButton(
                                            icon: Icons.slow_motion_video_sharp,
                                            text: 'Video',
                                          ),
                                        ),
                                         TextButton(
                                          onPressed: (){},
                                          child: MyButton(
                                            icon: Icons.favorite_border,
                                            text: 'Favorites',
                                          ),
                                        ),
                                         TextButton(
                                          onPressed: (){},
                                          child: MyButton(
                                            icon: Icons.access_time_outlined,
                                            text: 'Recent',
                                          ),
                                        ),
                                         TextButton(
                                          onPressed: (){},
                                          child: MyButton(
                                            icon: Icons.settings_suggest_outlined,
                                            text: 'Suggestion',
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextButton(
                                          onPressed: (){},
                                          child: MyButton(
                                            icon: Icons.location_on_outlined,
                                            text: 'Locations',
                                          ),
                                        ),
                                         TextButton(
                                          onPressed: (){},
                                          child: MyButton(
                                            icon: Icons.people_alt_outlined,
                                            text: 'Shared\nalbums',
                                          ),
                                        ),
                                         TextButton(
                                          onPressed: (){},
                                          child: MyButton(
                                            icon: Icons.delete_outlined,
                                            text: 'Trash',
                                          ),
                                        ),
                                         TextButton(
                                          onPressed: (){},
                                          child: MyButton(
                                            icon: Icons.settings_outlined,
                                            text: 'Settings',
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  icon: const Icon(Icons.dehaze),
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 260,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ],
            ),
          ]),
          bottomNavigationBar: menu(),
          body: const TabBarView(
            children: [
              Center(child: Text('Ishlamadi brat bu page\nishlatolisizmi?')),
              PhotosPage(),
             Center(child: Text('Buyam ishlamadi, albumsga otib birinchi iconi bosib korin)))')),
              // AlbumsPage(),
            ],
          ),
        ),
      ),
    );
  }

  Widget menu() {
    return Container(
      color: Colors.white,
      child: const TabBar(
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.black,
        tabs: [
          Tab(
            text: "Photos",
          ),
          Tab(
            text: "Albums",
          ),
          Tab(
            text: "Stories",
          ),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;
   final IconData icon;
   const MyButton({
    Key? key, required this.text, required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 26, color: Colors.black,),
        Text(text,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        )
        )
      ],
    );
  }
}
