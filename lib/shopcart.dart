import 'package:flutter/material.dart';
import './pembayaran.dart';

class shopcart extends StatefulWidget {
  shopcart({Key? key}) : super(key: key);

  @override
  State<shopcart> createState() => _shopcartState();
}

class _shopcartState extends State<shopcart> {
  int _counter = 1;
  int _selectedIndex = 1;
  int total = 100000;

  //increase the value of the counter
  void _incrementCounter() {
    setState(() {
      _counter++;
      total += 100000;
    });
  }

  //reset the counter value to 0-
  void _decrementCounter() {
    setState(() {
      _counter--;
      total -= 100000;
      if (_counter < 1) {
        _counter = 1;
        total = 100000;
      }
    });
  }

// Initial Selected Value
  String dropdownvalue = 'S';

  // List of items in our dropdown menu
  var items = [
    'S',
    'M',
    'L',
    'XL',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF146C94),
        title: Text("Shopcart"),
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
                        DropdownButton(
                          // Initial Value
                          value: dropdownvalue,

                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),

                          // Array list of items
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
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
                            padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                            child: Text(
                              "Quantity",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Row(children: [
                            SizedBox(
                              width: 25,
                              height: 25,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 255, 0, 0),
                                    padding: EdgeInsets.all(5)),
                                child: Icon(
                                  Icons.delete,
                                  size: 15,
                                ),
                                onPressed: () => showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    title: const Text('Konfirmasi'),
                                    content: const Text(
                                        'Apakah anda yakin menghapus item dari keranjang!'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'Cancel'),
                                        child: const Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'Hapus'),
                                        child: const Text('Hapus'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                              height: 10,
                            ),
                            SizedBox(
                              width: 25,
                              height: 25,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(5)),
                                child: Icon(
                                  Icons.remove,
                                  size: 15,
                                ),
                                onPressed: () => _decrementCounter(),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "$_counter",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            SizedBox(
                              width: 25,
                              height: 25,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(5)),
                                child: Icon(
                                  Icons.add,
                                  size: 15,
                                ),
                                onPressed: () => _incrementCounter(),
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ),
                  ]),
                )),
              ]))),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return Pembayaran();
              },
            ),
          );
        },
        icon: Icon(Icons.shopping_cart_checkout),
        label: Text("Rp.$total"),
        backgroundColor: Color(0xFF146C94),
      ),
    );
  }
}
