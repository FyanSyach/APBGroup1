import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import './barang.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F1F1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Center(
                child: Text(
                  "News",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              CarouselSlider(
                items: [
                  Container(
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage('aset/Banner1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage('aset/banner2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage('aset/banner3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: 150.0,
                  enlargeCenterPage:
                      true, // creating a feeling of depth in the carousel.(Menentukan apakah halaman saat ini harus lebih besar dari gambar samping,)
                  autoPlay: true, //menggeser satu halaman pada satu waktu.
                  aspectRatio: 16 /
                      9, // Rasio aspek digunakan jika tidak ada ketinggian yang dinyatakan.
                  autoPlayCurve:
                      Curves.fastOutSlowIn, // Menentukan kurva animasi.
                  enableInfiniteScroll:
                      true, //Menentukan apakah carousel harus berputar tanpa batas atau terbatas pada panjang item.
                  autoPlayAnimationDuration: Duration(
                      milliseconds:
                          800), // The animation duration between two transitioning pages while in auto playback.
                  viewportFraction:
                      0.8, // Bagian area pandang yang harus ditempati setiap halaman.
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Best Product",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Card(
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  splashColor: Color(0xFF0E5E6F),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return barang();
                        },
                      ),
                    );
                  },
                  child: SizedBox(
                    width: 150,
                    height: 170,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text(
                              "Anorak Jacket",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Center(
                            child: Image(
                              image: AssetImage('aset/produk1.jpg'),
                              width: 150,
                              height: 100,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text(
                              "Rp100.000",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.store, size: 15),
                                    Text(
                                      "S/M/L/XL",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                                Text("10RB+ terjual",
                                    style: TextStyle(fontSize: 10)),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Product",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              for (var i = 0; i < 5; i++) ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        splashColor: Color(0xFF0E5E6F),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return barang();
                              },
                            ),
                          );
                        },
                        child: SizedBox(
                          width: 205,
                          height: 170,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 5, 0, 0),
                                  child: Text(
                                    "Anorak Jacket",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                                Center(
                                  child: Image(
                                    image: AssetImage('aset/produk1.jpg'),
                                    width: 150,
                                    height: 100,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                  child: Text(
                                    "Rp100.000",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                      child: Row(
                                        children: [
                                          Icon(Icons.store, size: 15),
                                          Text(
                                            "S/M/L/XL",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text("10RB+ terjual",
                                        style: TextStyle(fontSize: 10)),
                                  ],
                                ),
                              ]),
                        ),
                      ),
                    ),
                    Card(
                      clipBehavior: Clip.hardEdge,
                      child: InkWell(
                        splashColor: Color(0xFF0E5E6F),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return barang();
                              },
                            ),
                          );
                        },
                        child: SizedBox(
                          width: 205,
                          height: 170,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 5, 0, 0),
                                  child: Text(
                                    "Anorak Jacket",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                                Center(
                                  child: Image(
                                    image: AssetImage('aset/produk1.jpg'),
                                    width: 150,
                                    height: 100,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                  child: Text(
                                    "Rp100.000",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                      child: Row(
                                        children: [
                                          Icon(Icons.store, size: 15),
                                          Text(
                                            "S/M/L/XL",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text("10RB+ terjual",
                                        style: TextStyle(fontSize: 10)),
                                  ],
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
