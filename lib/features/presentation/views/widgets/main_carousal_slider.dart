import 'package:cached_network_image/cached_network_image.dart';
import 'package:callange_1_tarek_alabd/features/presentation/views/other_screens/item_detail_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

int _current = 0;

final CarouselController _controller = CarouselController();

final List<String> imgList = [
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class MainCarousalSlider extends StatefulWidget {
  const MainCarousalSlider({super.key});

  @override
  State<MainCarousalSlider> createState() => _MainCarousalSliderState();
}

class _MainCarousalSliderState extends State<MainCarousalSlider> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList
        .map((item) => InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ItemDetailScreen(item:item))),
              child: Container(
                margin: const EdgeInsets.all(1.0),
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                    child: Stack(
                      children: <Widget>[
                        CachedNetworkImage(
                            imageUrl: item, fit: BoxFit.cover, width: 1000.0),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20.0)),
                            child: const Center(
                              child: Text(
                                'Sports',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(200, 0, 0, 0),
                                    Color.fromARGB(0, 0, 0, 0)
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: const [
                                      Text(
                                        'CNN Indonesia',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 13),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      CircleAvatar(
                                        radius: 9,
                                        backgroundColor: Colors.blue,
                                        child: Icon(
                                          Icons.check_rounded,
                                          size: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '6 hours ago',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 13),
                                      ),
                                    ],
                                  ),
                                  const Text(
                                    'Alexander wears modified helmet in road races',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  )
                                ],
                              )),
                        ),
                      ],
                    )),
              ),
            ))
        .toList();

    return Container(
      child: Column(
        children: [
          CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
            items: imageSliders,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.blue)
                          .withOpacity(_current == entry.key ? 1 : 0.1)),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
