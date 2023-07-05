// ignore_for_file: non_constant_identifier_names

import 'package:faffarnine/modals/Category.dart';
import 'package:faffarnine/services/Category_operations.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Widget createCategory(Category category) {
    return Container(
      color: Colors.blueGrey.shade300,
      child: Row(children:  [
        Image.network(category.imageUrl, fit: BoxFit.cover,),
        Text(category.name, style: TextStyle(color: Colors.white),)
      ],),
    );
  }


  List<Widget> createListofCategories() {
    List<Category> cataroryList =
    CategoryOperations.getCategories(); //recieved data
    //convert data to widget using map function
    List<Widget> categories = cataroryList.map((Category category) =>
        createCategory(category)).toList();
    return categories;
  }


  Widget CreateGrid() =>
      SizedBox(
        height: 500,
        child: GridView.count(crossAxisCount: 2,
          children: createListofCategories(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
Widget createAppBar(){
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    title: const Text('Good Morning'),
    actions: const [
      Padding(padding: EdgeInsets.only(right: 10.0),
      child: Icon(Icons.settings)
       )
    ],
  );
}



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors:[Colors.blueGrey.shade300,
        Colors.black,
        Colors.black,
        Colors.black],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight)
      ),
      child: Column(children: [ createAppBar(),
      const SizedBox(
        height: 5,
      ),
        CreateGrid(),
      ],),
    );
  }

CreateGrid()  {
}

