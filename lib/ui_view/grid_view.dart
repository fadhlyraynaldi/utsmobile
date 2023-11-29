     import 'package:flutter/material.dart';

    void main() {
      runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Grid(),
      ));
    }
    
    class Grid extends StatefulWidget {
      const Grid({Key? key}) : super(key: key);
    
      @override
      __myGridview createState() => __myGridview();
    }
    
    class __myGridview extends State<Grid> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: Text("Berita Terupdate"),
          ),
          
          body: GridView.count(
            //widget yang akan ditampilkan dalam 1 baris adalah 2
            crossAxisCount: 2,
            children: [
              //card ditampilkan disini
              //saya membuat custom card di bawah agar kodingan tidak terlalu panjang
              CustomCard(title: "News 1", image: "https://images.bisnis.com/posts/2020/02/06/1198038/hl-6-f.jpg"),
              CustomCard(title: "News 2", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRT-bmtPyuuFpC_u4sI3KkxbXGHvU3nGL3W7HrzYeDpvCikKhGo2ZaMXfX0Fs9OFSQENto&usqp=CAU"),
              CustomCard(title: "News 3", image: "https://denotasi.com/wp-content/uploads/2019/04/1-bisnis-indonesia-teknologi.bisnis.com_.jpg"),
              CustomCard(title: "News 4", image: "https://images.bisnis.com/posts/2017/04/03/641671/bi_22_okt_utama.jpg"),
            ],
          ),
        );
      }
    }
    
    //membuat customcard yang bisa kita panggil setiap kali dibutuhkan
    class CustomCard extends StatelessWidget {
    
      //ini adalah konstruktor, saat class dipanggil parameter konstruktor wajib diisi
      //parameter ini akan mengisi title dan gambar pada setiap card
      CustomCard({required this.title, required this.image});
    
      String title;
      String image;
    
      @override
      Widget build(BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Card(
            //menambahkan bayangan
            elevation: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        image,
                      ),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(title),
                )
              ],
            ),
          ),
        );
      }
    }