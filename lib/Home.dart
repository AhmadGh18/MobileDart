import 'package:flutter/material.dart';
import 'Pizza.dart';
import 'SinglePizza.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pizza Menu'),
      ),
      body: ListView.builder(
        itemCount: pizza.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image(
              image: AssetImage(pizza[index].url),
            ),
            title: Text(pizza[index].name),
            subtitle: Text('Price: \$${pizza[index].checkPrice()}'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SinglePizza(selectedPizza: pizza[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
