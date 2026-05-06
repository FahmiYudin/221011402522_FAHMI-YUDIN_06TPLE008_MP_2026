SOAL 1 — DESAIN HALAMAN UTAMA APLIKASI WORKSHOP

1. Sketsa Layout Halaman

Halaman utama aplikasi workshop dirancang menggunakan struktur layout yang sederhana dan terorganisir agar mudah digunakan oleh pengguna. Struktur utama aplikasi menggunakan widget Scaffold sebagai kerangka dasar yang terdiri dari AppBar dan Body. Pada bagian AppBar ditampilkan judul "Workshop Kampus" sebagai identitas halaman. Sementara itu, bagian body berisi daftar workshop yang ditampilkan menggunakan ListView, sehingga pengguna dapat melakukan scroll apabila jumlah data cukup banyak.

Setiap data workshop ditampilkan dalam bentuk Card yang berfungsi sebagai pembungkus agar setiap informasi terlihat terpisah dan lebih rapi. Di dalam Card digunakan widget Column untuk menyusun elemen secara vertikal, dimulai dari judul workshop yang ditampilkan dengan ukuran lebih besar dan tebal sebagai fokus utama. Selanjutnya, informasi tambahan seperti tanggal, lokasi, dan kuota ditampilkan menggunakan widget Row yang dipadukan dengan ikon agar lebih mudah dipahami secara visual.

Untuk meningkatkan kerapian tampilan, digunakan Padding dan SizedBox sebagai pengatur jarak antar elemen sehingga tampilan tidak terlihat padat. Pada bagian bawah setiap card terdapat tombol ElevatedButton dengan label "Daftar" yang diletakkan di sisi kanan sebagai aksi utama yang dapat dilakukan oleh pengguna.

2. Alasan Pemilihan Widget

Pemilihan widget dalam perancangan aplikasi ini didasarkan pada fungsi dan kebutuhan tampilan yang diinginkan. Widget Scaffold digunakan sebagai struktur utama karena menyediakan kerangka dasar aplikasi yang mencakup AppBar dan Body. Widget ListView.builder digunakan untuk menampilkan data workshop dalam bentuk daftar yang dapat di-scroll dan bersifat dinamis, sehingga cocok untuk menampilkan data dalam jumlah banyak.

Selanjutnya, widget Card digunakan untuk membungkus setiap item workshop agar tampilan lebih rapi dan terpisah dengan jelas. Widget Column digunakan untuk menyusun elemen secara vertikal, sedangkan widget Row digunakan untuk menyusun elemen secara horizontal, khususnya untuk menampilkan ikon dan teks secara berdampingan. Widget Text digunakan untuk menampilkan informasi, dan Icon digunakan sebagai penanda visual agar informasi lebih mudah dipahami.

Sebagai tombol aksi utama, digunakan ElevatedButton karena tampilannya lebih menonjol dan mudah dikenali oleh pengguna. Selain itu, widget Padding dan SizedBox digunakan untuk memberikan jarak antar elemen sehingga tampilan lebih nyaman dilihat.

3. Kesalahan UI yang Harus Dihindari

Dalam perancangan antarmuka, terdapat beberapa kesalahan yang harus dihindari agar tampilan tetap nyaman digunakan. Salah satu kesalahan yang umum adalah tampilan yang terlalu padat, dimana semua informasi ditampilkan tanpa jarak yang cukup sehingga sulit dibaca oleh pengguna. Untuk mengatasi hal ini, digunakan pengaturan jarak seperti Padding dan SizedBox.

Kesalahan lainnya adalah tidak adanya hierarki visual, dimana semua teks memiliki ukuran dan tampilan yang sama sehingga pengguna kesulitan membedakan informasi yang penting. Untuk menghindari hal tersebut, judul workshop dibuat lebih besar dan tebal dibandingkan informasi lainnya, sehingga pengguna dapat dengan mudah mengenali bagian yang paling penting.

4. Kenyamanan Pengguna (User Experience / UX)

Desain aplikasi ini juga memperhatikan aspek kenyamanan pengguna atau User Experience (UX). Salah satu aspek yang diterapkan adalah penggunaan ruang kosong (white space) untuk memberikan jarak antar elemen sehingga tampilan tidak terlihat penuh dan lebih nyaman dibaca. Selain itu, konsistensi dalam penggunaan bentuk Card membuat tampilan lebih terstruktur dan mudah dipahami.

Penggunaan ikon juga membantu pengguna dalam memahami informasi secara cepat tanpa harus membaca seluruh teks. Navigasi aplikasi dibuat sederhana dengan menggunakan ListView, sehingga pengguna dapat dengan mudah menjelajahi seluruh daftar workshop melalui fitur scroll.


# SOAL 2 — IMPLEMENTASI APLIKASI WORKSHOP MENGGUNAKAN FLUTTER

## 1. Implementasi Program

Implementasi aplikasi workshop dilakukan menggunakan framework Flutter dengan bahasa pemrograman Dart. Program diawali dengan fungsi `main()` yang berfungsi sebagai titik masuk (entry point) aplikasi, dimana aplikasi dijalankan menggunakan `runApp()` yang memanggil class utama `MyApp`. Pada class `MyApp`, digunakan widget `MaterialApp` sebagai dasar aplikasi untuk mengatur tampilan dan tema, serta mengarahkan halaman utama ke `WorkshopPage`.

Pada class `WorkshopPage`, dibuat sebuah daftar data workshop dalam bentuk `List<Map<String, String>>` yang berisi informasi judul, tanggal, lokasi, dan kuota. Data ini kemudian ditampilkan menggunakan widget `ListView.builder`, yang memungkinkan data ditampilkan secara dinamis dan dapat discroll sesuai jumlah data yang tersedia.

Setiap item workshop ditampilkan dalam bentuk `Card` untuk memberikan tampilan yang rapi dan terpisah antar data. Di dalam Card digunakan widget `Column` untuk menyusun elemen secara vertikal, dimulai dari judul workshop, kemudian diikuti oleh informasi tanggal, lokasi, dan kuota yang disusun menggunakan widget `Row` agar ikon dan teks dapat ditampilkan secara sejajar.

Untuk meningkatkan kenyamanan tampilan, digunakan widget `Padding` dan `SizedBox` untuk memberikan jarak antar elemen. Selain itu, pada bagian bawah Card ditambahkan widget `ElevatedButton` sebagai tombol aksi “Daftar” yang diletakkan di sisi kanan menggunakan `Align`.

Berikut adalah implementasi kode program yang digunakan:

```dart
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
                    Text(
                      data["judul"]!,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.calendar_today, size: 16),
                        SizedBox(width: 6),
                        Text(data["tanggal"]!),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on, size: 16),
                        SizedBox(width: 6),
                        Text(data["lokasi"]!),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.people, size: 16),
                        SizedBox(width: 6),
                        Text("Kuota: ${data["kuota"]}"),
                      ],
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        onPressed: () {},
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
```

---

## 2. Penjelasan Implementasi

Aplikasi ini dibangun menggunakan kombinasi beberapa widget utama Flutter seperti `Scaffold`, `AppBar`, `ListView.builder`, `Card`, `Column`, `Row`, `Text`, `Icon`, dan `ElevatedButton`. Penggunaan `ListView.builder` memungkinkan aplikasi menampilkan data secara efisien dan mendukung scrolling, sehingga cocok untuk menampilkan daftar workshop dalam jumlah banyak.

Setiap data workshop dibungkus menggunakan `Card` agar tampilan lebih terstruktur dan tidak bercampur. Penyusunan elemen menggunakan `Column` dan `Row` membantu dalam mengatur tata letak secara vertikal dan horizontal. Selain itu, penggunaan `Padding` dan `SizedBox` membantu menciptakan ruang antar elemen sehingga tampilan menjadi lebih rapi dan nyaman dibaca.

Tombol `ElevatedButton` digunakan sebagai aksi utama yang memungkinkan pengguna untuk melakukan pendaftaran workshop. Dengan kombinasi widget tersebut, aplikasi mampu menampilkan informasi secara jelas, terstruktur, dan mudah dipahami oleh pengguna.

---

## 3. Hasil Implementasi

Hasil dari implementasi ini adalah sebuah aplikasi sederhana yang mampu menampilkan daftar workshop kampus secara rapi dan interaktif. Pengguna dapat melihat informasi penting seperti judul workshop, tanggal pelaksanaan, lokasi, serta kuota yang tersedia. Selain itu, aplikasi juga menyediakan tombol aksi untuk melakukan pendaftaran.

Tampilan aplikasi yang menggunakan Card serta pengaturan jarak yang baik membuat informasi mudah dibaca dan tidak terlihat penuh. Dengan demikian, aplikasi ini telah memenuhi kebutuhan fungsional dan aspek kenyamanan pengguna (UX) sesuai dengan perancangan pada Soal 1.

---

## Kesimpulan

Implementasi aplikasi workshop menggunakan Flutter telah berhasil dilakukan dengan memanfaatkan berbagai widget yang sesuai dengan kebutuhan tampilan. Struktur aplikasi yang terorganisir, penggunaan ListView untuk menampilkan data, serta pemanfaatan Card untuk memperjelas setiap item membuat aplikasi ini menjadi rapi, mudah digunakan, dan sesuai dengan prinsip UI/UX yang baik.
