import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Pelayanan',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      
      home: Pelayanan(),
      
    );

    
    
  }
}
class Pelayanan extends StatefulWidget {
  @override
  _myPelayanan createState() => _myPelayanan();
}

class _myPelayanan extends State<Pelayanan> {


  @override
  
  Widget build(BuildContext context) {
  
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Data Mahasiswa"),
        backgroundColor: Colors.deepPurple,
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
                      "data:image/jpeg;base64,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"
                    ),
                    title: Text(
                      "Riski Maulana", 
                      maxLines: 1, 
                      overflow: TextOverflow.ellipsis, 
                    ),
                    subtitle: Text(
                      'Info Loker dong mas', 
                      maxLines: 2, 
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                );
              }, 
            ),
    );

    
  }
}