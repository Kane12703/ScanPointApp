import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 50),
        itemCount: drinks.length,
        itemBuilder: (context, index) {
          final drink = drinks[index];
          return ListTile(
            leading: Image.network(
              drink.image,
              height: 80,
              width: 80,
            ),
            title: Text(drink.name),
          );
        },
      ),
    );
  }
}

class Drink {
  int id;
  String name;
  String image;
  Drink(this.id, this.name, this.image);
}

List<Drink> drinks = [
  Drink(1, "Lisinopril", "http://dummyimage.com/130x100.png/dddddd/000000"),
  Drink(2, "Atenolol and Chlorthalidone",
      "http://dummyimage.com/218x100.png/dddddd/000000"),
  Drink(3, "Thiothixene", "http://dummyimage.com/234x100.png/ff4444/ffffff"),
  Drink(
      4, "Dextromethorphan", "http://dummyimage.com/198x100.png/ff4444/ffffff"),
  Drink(5, "Octinoxate", "http://dummyimage.com/148x100.png/ff4444/ffffff"),
  Drink(6, "Acarbose", "http://dummyimage.com/111x100.png/cc0000/ffffff"),
  Drink(7, "Zidovudine", "http://dummyimage.com/153x100.png/ff4444/ffffff"),
  Drink(8, "Risperidone", "http://dummyimage.com/164x100.png/cc0000/ffffff"),
  Drink(9, "Promethazine", "http://dummyimage.com/111x100.png/cc0000/ffffff"),
  Drink(10, "Quetiapine fumarate",
      "http://dummyimage.com/247x100.png/ff4444/ffffff"),
  Drink(11, "dextromethorphan",
      "http://dummyimage.com/209x100.png/ff4444/ffffff"),
  Drink(12, "GUAIFENESIN", "http://dummyimage.com/199x100.png/dddddd/000000"),
  Drink(
      13, "SALICYLIC ACID", "http://dummyimage.com/179x100.png/dddddd/000000"),
  Drink(14, "simvastatin", "http://dummyimage.com/173x100.png/5fa2dd/ffffff"),
  Drink(15, "Meclizine HCl", "http://dummyimage.com/142x100.png/ff4444/ffffff"),
  Drink(16, "Pepper Tree Pollen",
      "http://dummyimage.com/236x100.png/ff4444/ffffff"),
  Drink(17, "Menthol", "http://dummyimage.com/143x100.png/ff4444/ffffff"),
  Drink(
      18, "Acetaminophen,", "http://dummyimage.com/157x100.png/5fa2dd/ffffff"),
  Drink(19, "Acetaminophen", "http://dummyimage.com/134x100.png/dddddd/000000"),
  Drink(20, "Allscale", "http://dummyimage.com/134x100.png/cc0000/ffffff"),
];
