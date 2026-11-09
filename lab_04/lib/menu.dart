import 'package:flutter/material.dart';

const Color coffeeBrown = Color.fromARGB(255, 97, 56, 10);
const Color cardBrown = Color.fromARGB(255, 50, 35, 13);

const TextStyle itemStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 20,
);

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: coffeeBrown,
        foregroundColor: Colors.white,
        title: const Text('Coffee Shop Menu'),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MenuCard(
                routeName: 'ice_americano',
                file: 'ice_americano.png',
                name: 'Ice Americano',
              ),
              MenuCard(
                routeName: 'ice_latte',
                file: 'ice_latte.png',
                name: 'Ice Latte',
              ),
              MenuCard(
                routeName: 'choc_muffin',
                file: 'choc_muffin.png',
                name: 'Chocolate Muffin',
              ),
              MenuCard(
                routeName: 'vnl_muffin',
                file: 'vnl_muffin.png',
                name: 'Vanilla Muffin',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard({
    super.key,
    required this.routeName,
    required this.file,
    required this.name,
  });

  final String routeName;
  final String file;
  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Card(
        color: cardBrown,
        elevation: 5,
        margin: const EdgeInsets.all(12),
        child: ListTile(
          contentPadding: const EdgeInsets.all(12),
          leading: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(6),
            child: Image.asset('assets/images/$file', width: 50, height: 50),
          ),
          title: Text(name, style: itemStyle),
        ),
      ),
    );
  }
}
