import 'package:flutter/material.dart';

class PhotosPage extends StatefulWidget {
  static const path = 'photos';
  const PhotosPage({Key? key}) : super(key: key);

  @override
  State<PhotosPage> createState() => _PhotosPageState();
}

class _PhotosPageState extends State<PhotosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 400,
                height: 645,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        AlbumWidget(),
                        SizedBox(
                          width: 10,
                        ),
                        AlbumWidget(),
                        SizedBox(
                          width: 10,
                        ),
                        AlbumWidget(),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        AlbumWidget(),
                        SizedBox(
                          width: 10,
                        ),
                        AlbumWidget(),
                        SizedBox(
                          width: 10,
                        ),
                        AlbumWidget(),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        AlbumWidget(),
                        SizedBox(
                          width: 10,
                        ),
                        AlbumWidget(),
                        SizedBox(
                          width: 10,
                        ),
                        AlbumWidget(),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        AlbumWidget(),
                        SizedBox(
                          width: 10,
                        ),
                        AlbumWidget(),
                        SizedBox(
                          width: 10,
                        ),
                        AlbumWidget(),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
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

class AlbumWidget extends StatelessWidget {
  const AlbumWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image:  AssetImage("assets/nature.jpg"),
              fit: BoxFit.fill,
          ),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          'Album',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const Text(
          '120',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
