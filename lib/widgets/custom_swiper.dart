import 'package:bloc_cubit/models/anime_model.dart';
import 'package:bloc_cubit/widgets/custom_card_image.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class CustomSwiper extends StatelessWidget {
  final List<Datum> animes;
  const CustomSwiper({super.key, required this.animes});

  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: sizeScreen.height * 0.45,
      child: Swiper(
        onTap: (index) {
          Navigator.pushNamed(context, 'details', arguments: animes[index]); //b => pasar anime como parametro
        },
        itemBuilder: (context, index) {
          //! informacion anime
          final anime = animes[index];
          final imageUrl = anime.images['jpg']?.imageUrl ?? '';
          final title = anime.title;
          
          return Column(
            children: [
              Expanded(child: CustomCardImage(posterPath: imageUrl)),
              SizedBox(height: 8),
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
        itemCount: animes.length,
        itemWidth: 300,
        autoplay: false,
        control: SwiperControl(),
        layout: SwiperLayout.DEFAULT,
      ),
    );
  }
}
