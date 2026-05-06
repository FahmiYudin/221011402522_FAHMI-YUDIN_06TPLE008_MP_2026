import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ROOT APP
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WorkshopPage(),
    );
  }
}

// HALAMAN UTAMA
class WorkshopPage extends StatelessWidget {

  // DATA WORKSHOP
  final List<Map<String, String>> workshopList = [
    {
      "judul": "Workshop UI/UX Flutter",
      "tanggal": "10 Mei 2026",
      "lokasi": "Lab Komputer A",
      "kuota": "25"
    },
    {
      "judul": "Workshop Web Development",
      "tanggal": "12 Mei 2026",
      "lokasi": "Lab Komputer B",
      "kuota": "30"
    },
    {
      "judul": "Workshop Machine Learning",
      "tanggal": "15 Mei 2026",
      "lokasi": "Aula Kampus",
      "kuota": "20"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Workshop Kampus"),
      ),

      body: Padding(
        padding: EdgeInsets.all(12),

        child: ListView.builder(
          itemCount: workshopList.length,

          itemBuilder: (context, index) {
            final data = workshopList[index];

            return Card(
              margin: EdgeInsets.only(bottom: 12),
              elevation: 4,

              child: Padding(
                padding: EdgeInsets.all(12),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // JUDUL
                    Text(
                      data["judul"]!,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 8),

                    // TANGGAL
                    Row(
                      children: [
                        Icon(Icons.calendar_today, size: 16),
                        SizedBox(width: 6),
                        Text(data["tanggal"]!),
                      ],
                    ),

                    // LOKASI
                    Row(
                      children: [
                        Icon(Icons.location_on, size: 16),
                        SizedBox(width: 6),
                        Text(data["lokasi"]!),
                      ],
                    ),

                    // KUOTA
                    Row(
                      children: [
                        Icon(Icons.people, size: 16),
                        SizedBox(width: 6),
                        Text("Kuota: ${data["kuota"]}"),
                      ],
                    ),

                    SizedBox(height: 10),

                    // TOMBOL
                    Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        onPressed: () {
                          // aksi tombol
                        },
                        child: Text("Daftar"),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}