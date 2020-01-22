import 'package:flutter/cupertino.dart';
import 'package:the_basics/datamodels/episode_item_model.dart';

class EpisodesViewModel extends ChangeNotifier {
  final episodes = [
    EpisodeItemModel(
      title: 'Setup, Build and Deploy',
      duration: 14.07,
      imageUrl: 'https://www.filledstacks.com/assets/static/32.81b85c1.ebb7a1a.jpg',),
      EpisodeItemModel(
        title: 'Adding a Responsive UI',
        duration: 18.54,
        imageUrl:
            'https://www.filledstacks.com/assets/static/033.81b85c1.ebdf16d.jpg',),
    EpisodeItemModel(
        title: 'Layout Templates',
        duration: 14.55,
        imageUrl:
            'https://www.filledstacks.com/assets/static/034.81b85c1.52d0785.jpg',),
    EpisodeItemModel(
        title: 'State Management and Api integration',
        duration: 14.55,
        imageUrl:
            'https://www.filledstacks.com/assets/static/034.81b85c1.52d0785.jpg',),
  ];
}