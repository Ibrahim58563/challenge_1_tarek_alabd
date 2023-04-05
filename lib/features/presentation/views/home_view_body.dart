import 'package:callange_1_tarek_alabd/features/presentation/views/widgets/custom_recommendation_item.dart';
import 'package:callange_1_tarek_alabd/features/presentation/views/widgets/main_app_bar.dart';
import 'package:callange_1_tarek_alabd/features/presentation/views/widgets/main_carousal_slider.dart';
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
                'https://t4.ftcdn.net/jpg/03/03/62/45/240_F_303624505_u0bFT1Rnoj8CMUSs8wMCwoKlnWlh5Jiq.jpg',
            author: 'Mckindey',
            date: '  *      Feb 27,2023',
            category: 'Sports',
            title: 'What Training Do Vollyball Players Need?',
            authImageUrl:
                'https://t4.ftcdn.net/jpg/03/03/62/45/240_F_303624505_u0bFT1Rnoj8CMUSs8wMCwoKlnWlh5Jiq.jpg',
          ),
          CustomRecommendationItem(
            imageUrl:
                'https://t4.ftcdn.net/jpg/03/03/62/45/240_F_303624505_u0bFT1Rnoj8CMUSs8wMCwoKlnWlh5Jiq.jpg',
            author: 'Rosemary',
            date: '  *      Feb 28,2023',
            category: 'Education',
            title: 'Secondary School places: When do parents find out?',
            authImageUrl:
                'https://t4.ftcdn.net/jpg/03/03/62/45/240_F_303624505_u0bFT1Rnoj8CMUSs8wMCwoKlnWlh5Jiq.jpg',
          ),
        ],
      ),
    );
  }
}
