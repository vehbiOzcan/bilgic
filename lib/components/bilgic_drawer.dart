// import 'package:bilgic/pages/categories.dart';
// import 'package:bilgic/pages/chat_screen.dart';
// import 'package:bilgic/pages/login_page.dart';
// import 'package:bilgic/pages/selection_page.dart';
// import 'package:flutter/material.dart';

// class BilgicDrawer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Column(
//         children: <Widget>[
//           DrawerHeader(
//             decoration: BoxDecoration(
//               color: Colors.blue[800],
//             ),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 SizedBox(
//                   width: 100,
//                   height: 100,
//                   child: Image.asset('./lib/images/logo.png'), // Logo
//                 ),
//                 SizedBox(width: 8),
//                 Text(
//                   'Bilgiç',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 40,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           ListTile(
//             title: Text('Kategoriler'),
//             trailing: Icon(Icons.category_rounded),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => SelectionCategoriesPage()),
//               );
//             },
//           ),
//           Divider(),
//           ListTile(
//             title: Text('Tarih'),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) =>
//                         ChatScreen(category: Categories.categories[0])),
//               );
//             },
//           ),
//           ListTile(
//             title: Text('Coğrafya'),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) =>
//                         ChatScreen(category: Categories.categories[1])),
//               );
//             },
//           ),
//           ListTile(
//             title: Text('Bilim'),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) =>
//                         ChatScreen(category: Categories.categories[2])),
//               );
//             },
//           ),
//           ListTile(
//             title: Text('Teknoloji'),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) =>
//                         ChatScreen(category: Categories.categories[3])),
//               );
//             },
//           ),
//           ListTile(
//             title: Text('Yapay Zeka (AI)'),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) =>
//                         ChatScreen(category: Categories.categories[4])),
//               );
//             },
//           ),
//           ListTile(
//             title: Text('Yemek'),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) =>
//                         ChatScreen(category: Categories.categories[5])),
//               );
//             },
//           ),
//           ListTile(
//             title: Text('Oyun'),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) =>
//                         ChatScreen(category: Categories.categories[6])),
//               );
//             },
//           ),
//           ListTile(
//             title: Text('Genel'),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) =>
//                         ChatScreen(category: Categories.categories[7])),
//               );
//             },
//           ),
//           ListTile(
//             title: Text('İngilizce - Türkçe'),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) =>
//                         ChatScreen(category: Categories.categories[8])),
//               );
//             },
//           ),
//           ListTile(
//             title: Text('Türkçe - İngilizce'),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) =>
//                         ChatScreen(category: Categories.categories[9])),
//               );
//             },
//           ),
//           Spacer(),
//           Divider(),
//           ListTile(
//             title: Text('Çıkış'),
//             trailing: Icon(Icons.exit_to_app),
//             onTap: () {
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) =>
//                         LoginPage()),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:bilgic/pages/categories.dart';
import 'package:bilgic/pages/chat_screen.dart';
import 'package:bilgic/pages/login_page.dart';
import 'package:bilgic/pages/selection_page.dart';
import 'package:flutter/material.dart';

class BilgicDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue[800],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset('./lib/images/logo.png'), // Logo
                ),
                SizedBox(width: 8),
                Text(
                  'Bilgiç',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text('Kategoriler'),
            trailing: Icon(Icons.category_rounded),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SelectionCategoriesPage()),
              );
            },
          ),
          Divider(),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: Text('Tarih'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ChatScreen(category: Categories.categories[0])),
                    );
                  },
                ),
                ListTile(
                  title: Text('Coğrafya'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ChatScreen(category: Categories.categories[1])),
                    );
                  },
                ),
                ListTile(
                  title: Text('Bilim'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ChatScreen(category: Categories.categories[2])),
                    );
                  },
                ),
                ListTile(
                  title: Text('Teknoloji'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ChatScreen(category: Categories.categories[3])),
                    );
                  },
                ),
                ListTile(
                  title: Text('Yapay Zeka (AI)'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ChatScreen(category: Categories.categories[4])),
                    );
                  },
                ),
                ListTile(
                  title: Text('Yemek'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ChatScreen(category: Categories.categories[5])),
                    );
                  },
                ),
                ListTile(
                  title: Text('Oyun'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ChatScreen(category: Categories.categories[6])),
                    );
                  },
                ),
                ListTile(
                  title: Text('Genel'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ChatScreen(category: Categories.categories[7])),
                    );
                  },
                ),
                ListTile(
                  title: Text('İngilizce - Türkçe'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ChatScreen(category: Categories.categories[8])),
                    );
                  },
                ),
                ListTile(
                  title: Text('Türkçe - İngilizce'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ChatScreen(category: Categories.categories[9])),
                    );
                  },
                ),
              ],
            ),
          ),
          Divider(),
          ListTile(
            title: Text('Çıkış'),
            trailing: Icon(Icons.exit_to_app),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
