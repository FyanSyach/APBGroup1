import 'package:flutter/material.dart';
import './main.dart';

class Pembayaran extends StatefulWidget {
  const Pembayaran({super.key});

  @override
  State<Pembayaran> createState() => _Pembayaran();
}

class _Pembayaran extends State<Pembayaran> {
  // Initial Selected Value
  String mtdPengiriman = 'Reguler';

  // List of items in our dropdown menu
  var listPengiriman = [
    'Reguler',
    'Next day',
    'Instant',
  ];

  // Initial Selected Value
  String mtdPembayaran = 'Mandiri';

  // List of items in our dropdown menu
  var listPembayaran = [
    'Mandiri',
    'BCA',
    'BRI',
    'BNI',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF146C94),
        title: Text("Pembayaran"),
      ),
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(children: [
                Card(
                    child: SizedBox(
                  width: 150,
                  height: 170,
                  child: Row(children: [
                    Image(
                      image: AssetImage('aset/produk1.jpg'),
                      width: 150,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Anorak Jacket",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "Rp100.000",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                          "XL",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Text(
                              "Quantity",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                            child: Text(
                              "1",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                )),
                Card(
                  child: SizedBox(
                    width: 150,
                    height: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Alamat pengiriman",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15)),
                        Text(
                            "Jl. Telekomunikasi. 1, Terusan Buahbatu - Bojongsoang, Telkom University, Sukapura, Kec. Dayeuhkolot, Kabupaten Bandung, Jawa Barat 40257"),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Icon(Icons.local_shipping),
                            Text(" Jenis pengiriman",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                          ],
                        ),
                        Row(
                          children: [
                            DropdownButton(
                              // Initial Value
                              value: mtdPengiriman,

                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down),

                              // Array list of items
                              items: listPengiriman.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value
                              onChanged: (String? newValue) {
                                setState(() {
                                  mtdPengiriman = newValue!;
                                });
                              },
                            ),
                            Text("Rp. 10.000"),
                          ],
                        ),
                        Text("Estimasi tiba 17 Apr"),
                        SizedBox(
                          height: 15,
                        ),
                        Text("Metode Pembayaran",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15)),
                        Row(
                          children: [
                            DropdownButton(
                              // Initial Value
                              value: mtdPembayaran,

                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down),

                              // Array list of items
                              items: listPembayaran.map((String items1) {
                                return DropdownMenuItem(
                                  value: items1,
                                  child: Text(items1),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value
                              onChanged: (String? newValue1) {
                                setState(() {
                                  mtdPembayaran = newValue1!;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ]))),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Pembayaran berhasil'),
            content: const Text('Terima kasih sudah berbelanja di toko kami'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) {
                        return MyApp();
                      },
                    ),
                  );
                },
                child: const Text('Lanjut berbelanja'),
              ),
            ],
          ),
        ),
        icon: Icon(Icons.payments),
        label: Text("Rp.110.000"),
        backgroundColor: Color(0xFF146C94),
      ),
    );
  }
}
