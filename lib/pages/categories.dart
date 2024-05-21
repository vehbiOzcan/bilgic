import 'package:bilgic/gemini/prompts.dart';

class Categories {
  static List<Category> categories = [
    Category(
        title: 'Tarih',
        imagePath: './lib/images/history.png',
        prompt: Prompts.historyPrompt),
    Category(
        title: 'Coğrafya',
        imagePath: './lib/images/geography.png',
        prompt: Prompts.geographyPrompt),
    Category(
        title: 'Bilim',
        imagePath: './lib/images/science.png',
        prompt: Prompts.sciencePrompt),
    Category(
        title: 'Teknoloji',
        imagePath: './lib/images/tech.png',
        prompt: Prompts.techPrompt),
    Category(
        title: 'Yapay Zeka (AI)',
        imagePath: './lib/images/ai.png',
        prompt: Prompts.aiPrompt),
    Category(
        title: 'Yemek',
        imagePath: './lib/images/food.png',
        prompt: Prompts.foodPrompt),
    Category(
        title: 'Oyun',
        imagePath: './lib/images/game.png',
        prompt: Prompts.gamePrompt),
    Category(
        title: 'Genel',
        imagePath: './lib/images/general.png',
        prompt: Prompts.generalPrompt),
    Category(
        title: 'İngilizce-Türkçe',
        imagePath: './lib/images/translate.png',
        prompt: Prompts.engTrPrompt),
    Category(
        title: 'Türkçe-İngilizce',
        imagePath: './lib/images/translate.png',
        prompt: Prompts.trEngPrompt),
  ];
}

class Category {
  final String title;
  final String imagePath;
  final String prompt;

  Category(
      {required this.title, required this.imagePath, required this.prompt});
}
