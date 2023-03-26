import 'package:cached_network_image/cached_network_image.dart';
import 'package:callange_1_tarek_alabd/features/presentation/views/widgets/main_app_bar.dart';
import 'package:callange_1_tarek_alabd/features/presentation/views/widgets/main_carousal_slider.dart';
import 'package:callange_1_tarek_alabd/features/presentation/views/widgets/main_navigation_bar.dart';
import 'package:callange_1_tarek_alabd/features/presentation/views/widgets/main_title.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          MainAppBar(),
          MainTitle(text: 'Breaking News', url: "View All"),
          MainCarousalSlider(),
          MainTitle(text: 'Recommendation', url: "View All"),
          CustomRecommendationItem(
            imageUrl:
                'https://thumbor.bigedition.com/very-funny-cat-pilot-of-an-airplane-with-glasses-and-a-pilots-hat-against-a-background-of-clouds-a-concept-of-funny-and-funny-animals/15pLlrnnGtXSduPA3ERmePfUXuo=/219x0:1056x836/480x480/filters:quality(80)/granite-web-prod/75/f5/75f55524757a4f8886310777ad37ea63.jpeg',
            author: 'Mckindey',
            date: '  *      Feb 27,2023',
            category: 'Sports',
            title: 'What Training Do Vollyball Players Need?',
            authImageUrl:
                'https://thumbs.dreamstime.com/b/cat-dress-23506960.jpg',
          ),
          CustomRecommendationItem(
            imageUrl:
                'https://p16-sign-va.tiktokcdn.com/tos-maliva-avt-0068/1981838f4eb2d3dad3c8ab5c91f9fbc9~c5_720x720.jpeg?x-expires=1679907600&x-signature=%2BE4resKo81gai0aEBmgikz39tso%3D',
            author: 'Rosemary',
            date: '  *      Feb 28,2023',
            category: 'Education',
            title: 'Secondary School places: When do parents find out?',
            authImageUrl:
                'https://i.pinimg.com/736x/ba/92/7f/ba927ff34cd961ce2c184d47e8ead9f6.jpg',
          ),

        ],
        
      ),

    );
  }
}

class CustomRecommendationItem extends StatelessWidget {
  const CustomRecommendationItem(
      {super.key,
      required this.imageUrl,
      required this.category,
      required this.title,
      required this.author,
      required this.date,
      required this.authImageUrl});

  final String imageUrl;
  final String authImageUrl;
  final String category;
  final String title;
  final String author;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: imageUrl,
              width: 140,
              height: 140,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .6,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20.0)),
                        child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.blue,
                            child: CachedNetworkImage(
                              fit: BoxFit.cover,
                              height: 30,
                              width: 30,
                              imageUrl: authImageUrl,
                            )),
                      ),
                      Text(
                        author,
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                      Text(
                        date,
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                    ],
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
