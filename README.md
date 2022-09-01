### 🎬 **Four Movie**

Sebuah aplikasi yang akan memudahkan kita dalam memilih sebuah film

Aplikasi ini merupakan aplikasi berbasis multiplaform yang dibuat dengan menggunakan bahasa pemrograman FLUTTER dan berbasis open source

Projek ini diselanggarakan oleh FUGI (Flutter User Grup Indonesia), sebuah grup diskusi & sharing yang berisikan para Flutter Developer yang baik hati ❤️

Four Movie adalah sebuah aplikasi yang di kerjakan oleh FUGI TEAM 4

Mentor
* Dita

Anggota
* Yonattan
* Hangga
* Adit
* Endi
* Fajar

Kordinator
* Bahri
* Fatih

### 🎖  **Installing**
```
dependencies:
  flutter:
    sdk: flutter
  json_annotation: ^4.6.0
  http: ^0.13.4

  # The following adds the Cupertino Icons font to your application.
  # Use with the CupertinoIcons class for iOS style icons.
  cupertino_icons: ^1.0.2
  google_fonts: ^3.0.1
  card_swiper: ^2.0.4
  flutter_bloc: ^8.1.1
  freezed: ^2.1.0+1

dev_dependencies:
  flutter_test:
    sdk: flutter
  json_serializable: ^6.3.1
  build_verify: ^3.0.0
  build_runner: ^2.2.0
  flutter_launcher_icons: ^0.10.0

flutter_icons:
  android: true
  ios: true
  image_path: "assets/logo.png"
  web:
    generate: true
    image_path: "assets/logo.png"
    background_color: "#hexcode"
    theme_color: "#hexcode"
```

### 🚀 **Getting Started**
1. Variable APIKEY = 'ISI_SENDIRI_API_KEYNYA' itu isinya ganti dengan api key yang didapat dari the movie db. Cari API key mu disini https://www.themoviedb.org/settings/api cari bagian API Key (v3 auth)
2. Kalau merahmu ada di model karena tidak ada file *.freezed.dart atau *.g.dart run syntax ini: 
flutter pub run build_runner build --delete-conflicting-outputs
Bila tidak paham ini apa silahkan cari aplikasi soal build runner flutter di internet
3. Statenya ga harus pake cubit, sembarang deh bisanya apa
4. kalau mau merge ke branch master:
    1. di LOCAL PC/LAPTOP/MAC lakuin commit dan push dulu semua perubahan yang sudah kamu lakukan di lokalmu
    2. jalanin : git pull origin master
        1. bila lancar tidak ada conflict: push aja lagi ke github dan bikin pull request buat nge merge
        2. bila conflict coba tanyakan dulu di grup

### ❗️ **Note**
* Lihatlah [dokumentasi](https://flutter.dev/) dari flutter jika terjadi masalah 


### 📷  **Screenshots**
 ![Alt text](/screenshoot/MainScreen.jpg?raw=true "Main Screen")
 ![Alt text](/relative/screenshoot/SearchScreen.jpg?raw=true "Search Screen")
 ![](assets/16618334071160.jpg)






