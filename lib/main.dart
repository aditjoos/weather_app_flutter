import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app_flutter/components/myWidgets.dart';
import 'package:weather_app_flutter/pages/detailCuaca.dart';
import 'package:weather_app_flutter/pages/mainPage.dart';
import 'package:weather_app_flutter/pages/pengaturan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'Weather App - Flutter UI Challenge by aditjoos',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  bool _isPengaturanOpened = false;
  bool _isTambahKotaOpened = false;
  bool _isDetailCuacaOpened = false;

  bool _isOverlay = false;

  String asset = '';
  bool isTerang = false;
  List<String> listJamHariIni = [
    '13:00',
    '14:00',
    '15:00',
    '16:00',
    '17:00',
    '18:00',
    '19:00',
    '20:00',
    '21:00',
    '22:00',
    '23:00',
    '24:00',
    '1:00',
    '2:00',
    '3:00',
    '4:00',
    '5:00',
    '6:00',
  ];
  List<int> listPersenHariIni = [];

  @override
  void initState() {
    super.initState();

    asset = assetDark;
    isTerang = false;
    listPersenHariIni = listPersenHariIniDark;
  }

  String assetDark = 'assets/png/weather/glass/thunder.png';
  List<int> listPersenHariIniDark = [
    70,
    60,
    60,
    50,
    50,
    40,
    50,
    50,
    40,
    40,
    40,
    40,
    40,
    40,
    40,
    40,
    40,
    40,
  ];

  String assetLight = 'assets/png/weather/glass/partly_cloudy.png';
  List<int> listPersenHariIniLight = [
    30,
    20,
    20,
    30,
    40,
    40,
    40,
    40,
    40,
    50,
    50,
    50,
    50,
    40,
    40,
    40,
    40,
    40,
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        // statusBarColor: MyConstants().backgroundColor,
        // statusBarIconBrightness: Brightness.dark,
        systemNavigationBarDividerColor: Colors.grey[400],
        systemNavigationBarColor: MyConstants().backgroundColor,
        systemNavigationBarIconBrightness: Brightness.dark));

    return Scaffold(
      backgroundColor: MyConstants().backgroundColor,
      body: Stack(
        children: <Widget>[
          /// tampilan utama
          Positioned.fill(
            child: MainPageLayout(
              onTapTambahKota: () => setState(() {
                _isTambahKotaOpened = true;
                _isOverlay = true;
              }),
              onTapPengaturan: () => setState(() {
                _isPengaturanOpened = true;
                _isOverlay = true;
              }),
              onTapCuacaSekarang: () => setState(() {
                asset = assetDark;
                isTerang = false;
                listPersenHariIni = listPersenHariIniDark;

                _isDetailCuacaOpened = true;
                _isOverlay = true;
              }),
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    KotaFavorit(
                      onTap: () => setState(() {
                        asset = assetLight;
                        isTerang = true;
                        listPersenHariIni = listPersenHariIniLight;

                        _isDetailCuacaOpened = true;
                        _isOverlay = true;
                      }),
                      isTerang: true,
                      namaKota: 'Malang',
                      suhu: 27,
                      kondisi: 'Cerah berawan',
                      gambarIconCuaca:
                          'assets/png/weather/glass/partly_cloudy.png',
                    ),
                    KotaFavorit(
                      onTap: () => setState(() {
                        asset = assetDark;
                        isTerang = false;
                        listPersenHariIni = listPersenHariIniDark;

                        _isDetailCuacaOpened = true;
                        _isOverlay = true;
                      }),
                      isTerang: false,
                      namaKota: 'Lawang',
                      suhu: 21,
                      kondisi: 'Hujan',
                      gambarIconCuaca: 'assets/png/weather/glass/rainy.png',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    KotaFavorit(
                      onTap: () => setState(() {
                        asset = assetDark;
                        isTerang = false;
                        listPersenHariIni = listPersenHariIniDark;

                        _isDetailCuacaOpened = true;
                        _isOverlay = true;
                      }),
                      isTerang: false,
                      namaKota: 'Purwodadi',
                      suhu: 20,
                      kondisi: 'Hujan dan petir',
                      gambarIconCuaca: 'assets/png/weather/glass/thunder.png',
                    ),
                    KotaFavorit(
                      onTap: () => setState(() {
                        asset = assetLight;
                        isTerang = true;
                        listPersenHariIni = listPersenHariIniLight;

                        _isDetailCuacaOpened = true;
                        _isOverlay = true;
                      }),
                      isTerang: true,
                      namaKota: 'Pasuruan',
                      suhu: 28,
                      kondisi: 'Berawan',
                      gambarIconCuaca: 'assets/png/weather/glass/cloudy.png',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    KotaFavorit(
                      onTap: () => setState(() {
                        asset = assetLight;
                        isTerang = true;
                        listPersenHariIni = listPersenHariIniLight;

                        _isDetailCuacaOpened = true;
                        _isOverlay = true;
                      }),
                      isTerang: true,
                      namaKota: 'Sukerojo',
                      suhu: 29,
                      kondisi: 'Cerah',
                      gambarIconCuaca: 'assets/png/weather/glass/sunny.png',
                    ),
                    KotaFavorit(
                      onTap: () => setState(() {
                        asset = assetLight;
                        isTerang = true;
                        listPersenHariIni = listPersenHariIniLight;

                        _isDetailCuacaOpened = true;
                        _isOverlay = true;
                      }),
                      isTerang: true,
                      namaKota: 'Pandaan',
                      suhu: 30,
                      kondisi: 'Cerah',
                      gambarIconCuaca: 'assets/png/weather/glass/sunny.png',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    KotaFavorit(
                      onTap: () => setState(() {
                        asset = assetDark;
                        isTerang = false;
                        listPersenHariIni = listPersenHariIniDark;

                        _isDetailCuacaOpened = true;
                        _isOverlay = true;
                      }),
                      isTerang: false,
                      namaKota: 'Arjosari',
                      suhu: 23,
                      kondisi: 'Hujan',
                      gambarIconCuaca: 'assets/png/weather/glass/rainy.png',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),

          /// overlay saat tombol Tambah kota baru ditekan dan muncul dialog
          /// atau panel untuk mencari kota.
          Positioned.fill(
            child: AnimatedCrossFade(
              crossFadeState: _isOverlay
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 500),
              firstCurve: Curves.easeInOutCubic,
              secondCurve: Curves.easeInOutCubic,
              firstChild: GestureDetector(
                onTap: () => setState(() {
                  _isTambahKotaOpened = false;
                  _isOverlay = false;
                }),
                child: Container(
                  color: Colors.black54,
                ),
              ),
              secondChild: Container(
                color: null,
              ),
            ),
          ),

          /// dialog atau panel untuk Tambah kota baru
          Positioned(
            top: 0,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOutCubic,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              width: MediaQuery.of(context).size.width,
              height: _isTambahKotaOpened ? 305 : 0,
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(18.0)),
                color: MyConstants().backgroundColor,
              ),
              child: TambahKotaPencarian(
                  onTap: () => setState(() {
                        _isTambahKotaOpened = false;
                        _isOverlay = false;
                      })),
            ),
          ),

          /// panel untuk halaman pengaturan aplikasi
          Positioned(
              left: 0,
              child: PengaturanPage(
                onPressed: () => setState(() {
                  _isPengaturanOpened = false;
                  _isOverlay = false;
                }),
                width:
                    _isPengaturanOpened ? MediaQuery.of(context).size.width : 0,
              )),

          /// panel untuk halaman detail cuaca
          Positioned(
              right: 0,
              child: DetailCuacaPage(
                onPressed: () => setState(() {
                  _isDetailCuacaOpened = false;
                  _isOverlay = false;
                }),
                isTerang: isTerang,
                width: _isDetailCuacaOpened
                    ? MediaQuery.of(context).size.width
                    : 0,
                asset: asset,
                listJamHariIni: listJamHariIni,
                listPersenHariIni: listPersenHariIni,
              )),
        ],
      ),
    );
  }
}
