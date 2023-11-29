
import 'package:flutter/material.dart';
import 'package:project_uts_mobile/ui_view/pelayanan.dart';
import 'package:project_uts_mobile/ui_view/program.dart';
import 'package:project_uts_mobile/ui_view/grid_view.dart';
import 'package:project_uts_mobile/ui_view/profil.dart';


void main() => runApp(Beranda());



  class Beranda extends StatefulWidget {
      const Beranda({ Key? key }) : super(key: key);
    
      @override
      _HomePageState createState() => _HomePageState();
    }
    
    class _HomePageState extends State<Beranda> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("BUMN"),
            backgroundColor: Colors.blue,
          ),
          
         body: ListView.builder(
              // itemcount adalah total panjang data yang ingin ditampilkan
              itemCount: 15,
    
              // itembuilder adalah bentuk widget yang akan ditampilkan, wajib menggunakan 2 parameter.
              itemBuilder: (context, index){
    
                //padding digunakan untuk memberikan jarak bagian atas listtile agar tidak terlalu mepet
                //menggunakan edgeInsets.only untuk membuat jarak hanya pada bagian atas saja
                return Padding(
                  padding: const EdgeInsets.only(
                    top: 20, 
                  ),
    
                  //listtile adalah widget yang disediakan flutter berisi 3 properti yang kita pakai
                  //properti: leading, title, dan subtitle. di dalam setiap properti kalian bebas melakukan customisasi
                  child: ListTile(
                    leading: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyQlLPo31l0WTjwBm3X-hp_iUXdJPk_Y97imEmj0sqIgqmZxSWANy88J3w8hRR-VB4vss&usqp=CAU"
                    ),
                    title: Text(
                      "BADAN USAHA MILIK NEGARA", 
                      maxLines: 1, 
                      overflow: TextOverflow.ellipsis, 
                    ),
                    subtitle: Text(
                      'BUMN adalah BUMN badan usaha yang seluruh atau sebagian besar modalnya dimiliki oleh negara melalui penyertaan secara langsung yang berasal dari kekayaan negara yang dipisahkan', 
                      maxLines: 2, 
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                );
              }, 
            ),
          //memberikan button garis tiga disebelah kiri appbar
          //jika ditekan akan menjalankan widget builddrawer
          drawer: Drawer(
          //membuat list, 
          //list digunakan untuk melakukan scrolling jika datanya terlalu panjang
          child: ListView(
            padding: EdgeInsets.zero,
            //di dalam listview ini terdapat beberapa widget drawable
            children: [
              UserAccountsDrawerHeader(
                //membuat gambar profil
                currentAccountPicture: Image(
                  image: NetworkImage("data:image/jpeg;base64,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")
                ),
                //membuat nama akun
                accountName: Text("Admin"), 
                //membuat nama email
                accountEmail: Text("ig: bumnindonesia@gmail.com"),
                //memberikan background
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://1.bp.blogspot.com/-OTzWdkg22oI/Xv1uGV4-LTI/AAAAAAAAdjc/ZcuwDEZ4a2A7T-PG6eTN3dI936vEiPu3wCLcBGAsYHQ/s1600/Screenshot_2020-07-02%2BLogo%2BBaru%2BKementerian%2BBUMN%252C%2BSimbol%2BEra%2BKemandirian.png"), 
                    fit: BoxFit.cover
                  )
                ),
              ), 
              //membuat list menu
              ListTile( leading: Icon(Icons.home), title: Text("Beranda"), onTap: ()  {
                Navigator.push(
                   context, MaterialPageRoute(builder: (context) => Beranda()));
              },),
              ListTile( leading: const Icon(Icons.people), title: const Text("Pelayanan"), onTap: (){
                 Navigator.push(
                   context, MaterialPageRoute(builder: (context) => Pelayanan())); 
              },),
              ListTile( leading: const Icon(Icons.people), title: const Text("Program"), onTap: (){
                 Navigator.push(
                   context, MaterialPageRoute(builder: (context) => program()));
              },), 
              ListTile( leading: Icon(Icons.newspaper), title: Text("Berita"), onTap: (){
                Navigator.push(
                   context, MaterialPageRoute(builder: (context) => Grid()));
              },), 
             
             
              ListTile( leading: Icon(Icons.info), title: Text("Tentang"), onTap: (){
                 Navigator.push(
                   context, MaterialPageRoute(builder: (context) => Profil()));
              },), 
            ],
          ),
        ), 
        );
      }
    }
    
    //widget ini adalah isi dari sidebar atau drawer
   