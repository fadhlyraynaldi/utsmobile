import 'dart:math';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

  void main() {
    runApp(program());
  }
  
  class program extends StatelessWidget {
  final Faker faker = Faker();
   
    @override
    Widget build(BuildContext context) {
       List<layanan> dummyData = List.generate(100, (index) {
      return layanan(
      "https://picsum.photos/id/$index/200",
      faker.food.restaurant(),
      (10000 + Random().nextInt(100000)) as String?,
      faker.lorem.sentence()
      );
    }
    );
      return Scaffold(
      appBar: AppBar(
        title: Text ("Program"),
        backgroundColor: Colors.blue,
      ), 
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,

          ),
          itemBuilder: (context, index) {
            return GridTile(
              child: Image.network(dummyData[index].imageURL!),
            );
          },
          itemCount: dummyData.length,
          ),
      );
    }
  }
  
  class layanan {
    @required String? judul;
    @required String? imageURL;
    @required String? deskripsi;

    layanan(this.imageURL,this.judul,this.deskripsi, String sentence);
  }