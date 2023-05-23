import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:youtube_ecommerce/screens/auth_ui/welcome/welcome.dart';
import 'package:youtube_ecommerce/screens/custom_bottom_bar/custom_bottom_bar.dart';

class VirtualTryon extends StatefulWidget {
  const VirtualTryon({key}) : super(key: key);

  @override
  State<VirtualTryon> createState() => _VirtualTryonState();
}

class _VirtualTryonState extends State<VirtualTryon> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red.shade900,
        title: const Text('Virtual try-on'),
        actions: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
//            header
            UserAccountsDrawerHeader(
              accountName: const Text('Santos Enoque'),
              accountEmail: const Text('santosenoque.ss@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.red.shade900),
            ),

//            body

            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),

            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person),
              ),
            ),

            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),

            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Categoris'),
                leading: Icon(Icons.dashboard),
              ),
            ),

            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite),
              ),
            ),
          ],
        ),
      ),

      //body
      body: SafeArea(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SizedBox(height: 50),
            const Image(
              image: AssetImage("assets/images/virtualtryon.jpg"),
            ),
            const SizedBox(height: 50),
            // ignore: prefer_const_constructors
            Center(
              child: const Text(
                'Stand properly as instructed',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            const SizedBox(height: 200),

            Center(
              child: FloatingActionButton(
                // ignore: sort_child_properties_last
                child: const Icon(Icons.arrow_forward),
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                onPressed: () {
                  FirebaseAuth auth = FirebaseAuth.instance;
                  User? user = auth.currentUser;
                  if (user != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CustomBottomBar(),
                      ),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Welcome(),
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
