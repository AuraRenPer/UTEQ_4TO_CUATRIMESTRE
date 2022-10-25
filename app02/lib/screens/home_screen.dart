import 'package:app02/widgets/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:app02/widgets/card_swiper.dart';

import '../widgets/favs_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi tiendita"),
        actions: [],
      ),
      body: Column(
        children: const [CardSwiper(), FavsSlider()],
      ),
    );
  }
}
