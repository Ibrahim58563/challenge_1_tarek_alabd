import 'package:cached_network_image/cached_network_image.dart';
import 'package:callange_1_tarek_alabd/features/presentation/views/other_screens/item_detail_screen.dart';
import 'package:flutter/material.dart';

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
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ItemDetailScreen(item: imageUrl)),
      ),
      child: Padding(
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
      ),
    );
  }
}
