import 'package:flutter/material.dart';

// Untuk Tubuh
// ignore: camel_case_types
class bodi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const ukuran = TextStyle(fontSize: 20);
    return ListView(
      padding: const EdgeInsets.all(32.0),
      children: <Widget>[
        Container(
            height: 400,
            width: 200,
            margin: EdgeInsets.all(20),
            child: Image.asset("images/ARIFIN.jpg")),
        Text("NAMA    : ARIFIN", style: ukuran),
        Text("TTL     : GRESIK, 02 MARET 2001", style: ukuran),
        Text("NIPP    : 20.20.04023", style: ukuran),
        Text(
          "JURUSAN : INFORMATIKA, PEMROGRAMAN, DAN DESAIN WEB",
          style: ukuran,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.blue),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        title: const Text("AH MANTAP"),
                        content: const Text("SELAMAT DATANG BRO!"),
                        actions: <Widget>[
                          TextButton(
                              onPressed: () => Navigator.pop(context, "Batal"),
                              child: const Text("Batal")),
                          TextButton(
                              onPressed: () => Navigator.pop(context, "Ya"),
                              child: const Text("ya")),
                        ],
                      )).then((returnVal) {
                if (returnVal != null) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Kamu Klik $returnVal"),
                    action: SnackBarAction(
                      label: "YEO BROO!!",
                      onPressed: () {},
                    ),
                  ));
                }
              });
            },
            child: const Text("AH MANTAP", style: ukuran))
      ],
    );
  }
}
