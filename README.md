# fugi_movie_app_team_4

Lomba membuat aplikasi get api dari movie db

## Getting Started
1. Variable APIKEY = 'ISI_SENDIRI_API_KEYNYA' itu isinya ganti dengan api key yang didapat dari the movie db. Cari API key mu disini https://www.themoviedb.org/settings/api cari bagian API Key (v3 auth)
2. Kalau merahmu ada di model karena tidak ada file *.freezed.dart atau *.g.dart run syntax ini: 
flutter pub run build_runner build --delete-conflicting-outputs
Bila tidak paham ini apa silahkan cari aplikasi soal build runner flutter di internet
3. Statenya ga harus pake cubit, sembarang deh bisanya apa
4. kalau mau merge ke branch master:
    1. di LOCAL PC/LAPTOP/MAC lakuin commit dan push dulu semua perubahan yang sudah kamu lakukan di lokalmu
    2. jalanin : git pull origin master
    3. a. bila lancar tidak ada conflict: push aja lagi ke github dan bikin pull request buat nge merge
        b. bila conflict coba tanyakan dulu di grup
5. Mas Dita ada yang kurang?