 import 'package:bilgic/components/bilgic_appbar.dart';
import 'package:bilgic/components/bilgic_drawer.dart';
import 'package:bilgic/pages/categories.dart';
import 'package:bilgic/pages/chat_screen.dart';
import 'package:flutter/material.dart';

// class Category {
//   final String title;
//   final String imagePath;

//   Category({required this.title, required this.imagePath});
// }

// class SelectionCategoriesPage extends StatelessWidget {

//   final List<Category> categories = [
//     Category(title: 'Tarih', imagePath: './lib/images/history.png'),
//     Category(title: 'Coğrafya', imagePath: './lib/images/geography.png'),
//     Category(title: 'Bilim', imagePath: './lib/images/science.png'),
//     Category(title: 'Genel', imagePath: './lib/images/general.png'),
//     Category(title: 'İngilizce-Türkçe', imagePath: './lib/images/translate.png'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Kategoriler'),
//         ),
//         body: ListView.builder(
//           itemCount: categories.length,
//           itemBuilder: (context, index) {
//             return GestureDetector(
//               onTap: () {
//                 // Buraya tıklama işlemlerini ekleyebilirsiniz.
//                 print('Tıklanan kategori: ${categories[index].title}');

//               },
//               child: Card(
//                 color: index % 2 == 0 ? Colors.blue[100] : Colors.green[100], // Alternatif renkler
//                 child: ListTile(
//                   leading: Image.asset(
//                     categories[index].imagePath,
//                     width: 50,
//                     height: 50,
//                     fit: BoxFit.cover,
//                   ),
//                   title: Text(
//                     categories[index].title,
//                     style: TextStyle(fontSize: 18),
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//     );
//   }
// }


// class Category {
//   final String title;
//   final String imagePath;

//   Category({required this.title, required this.imagePath});
// }

class SelectionCategoriesPage extends StatelessWidget {
  // final List<Category> categories = [
  //   Category(title: 'Tarih', imagePath: './lib/images/history.png'),
  //   Category(title: 'Coğrafya', imagePath: './lib/images/geography.png'),
  //   Category(title: 'Bilim', imagePath: './lib/images/science.png'),
  //   Category(title: 'Genel', imagePath: './lib/images/general.png'),
  //   Category(title: 'İngilizce-Türkçe', imagePath: './lib/images/translate.png'),
  // ];

  final List<Category> categories = Categories.categories;

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   routes: {
    //     '/': (context) => SelectionScreen(categories: categories),
    //   },
    // );
    return SelectionScreen(categories: categories);
  }
}

class SelectionScreen extends StatelessWidget {
  final List<Category> categories;

  SelectionScreen({required this.categories});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BilgicAppBar(title: "Kategoriler"),
      drawer: BilgicDrawer(),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => ChatScreen(category: categories[index]),
                ),
              );
            },
            child: Card(
              color: index % 2 == 0 ? Colors.blue[100] : Colors.green[100], // Alternatif renkler
              child: ListTile(
                leading: Image.asset(
                  categories[index].imagePath,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                title: Text(
                  categories[index].title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}