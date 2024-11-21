import 'package:codelabs_101/pages/login.dart';
import 'package:codelabs_101/pages/productDetail.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// const Color.fromARGB(250, 210, 125, 1)
// const Color.fromARGB(250, 210, 125, 1)
// const Color.fromARGB(250, 210, 125, 1)

class DashboardPage extends StatefulWidget {
  DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final List<Map<String, dynamic>> products = [
    {
      'image': 'mie.png',
      'title': 'Mie Instant',
      'subtitle': 'Rp. 3.000',
      'rating': '4.4'
    },
    {
      'image': 'curry.png',
      'title': 'Curry Instant',
      'subtitle': 'Rp. 32.000',
      'rating': '4.2'
    },
    {
      'image': 'nugget.png',
      'title': 'Nugget Instant',
      'subtitle': 'Rp. 18.000',
      'rating': '4.5'
    },
    {
      'image': 'sosis.png',
      'title': 'Sosis Instant',
      'subtitle': 'Rp. 12.000',
      'rating': '3.9'
    },
    {
      'image': 'susu.png',
      'title': 'Susu Instant',
      'subtitle': 'Rp. 14.500',
      'rating': '5.0'
    },
    {
      'image': 'nasi.png',
      'title': 'Nasi Instant',
      'subtitle': 'Rp. 36.000',
      'rating': '4.6'
    },
    {
      'image': 'jambu.png',
      'title': 'Jambu Instant',
      'subtitle': 'Rp. 3.700',
      'rating': '4.8'
    },
    {
      'image': 'loading.json',
      'title': 'Loading',
      'subtitle': 'Rp. -0',
      'rating': '0.0'
    },
  ];

  List<InkWell> _buildGridCards(BuildContext context) {
    return products.map((product) {
      return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetailPage(product: product),
            ),
          );
        },
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 18.0 / 11.0,
                child: product['image'].endsWith('.png')
                    ? Image.asset(
                        product['image'],
                        fit: BoxFit.cover,
                      )
                    : Lottie.asset(
                        product['image'],
                      ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            product['title'],
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              Text(
                                product['rating'],
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color:
                                        Theme.of(context).colorScheme.primary),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        product['subtitle'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Theme.of(context).colorScheme.primary,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        leading: Builder(
          builder: (BuildContext context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.menu,
                semanticLabel: 'Menu',
              )),
        ),
        title: Text(
          'SwiftCart',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              print('Filter button');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'Search',
            ),
            onPressed: () {
              print('Search Button');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SwiftCart',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Kecepatan dalam Genggaman',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
                print('Home menu selected');
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Cart'),
              onTap: () {
                Navigator.pop(context);
                print('Cart menu selected');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                print('Settings menu selected');
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => LoginPage()));
              },
            ),
          ],
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        childAspectRatio: 8.0 / 9.0,
        children: _buildGridCards(context),
      ),
    );
  }
}
