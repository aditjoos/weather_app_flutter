import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:weather_app_flutter_ui_challenge/components/myWidgets.dart';
import 'package:weather_app_flutter_ui_challenge/pages/detailCuaca.dart';
import 'package:weather_app_flutter_ui_challenge/pages/mainPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool _isPengaturanOpened = false;
  bool _isTambahKotaOpened = false;

  bool _isDetailCuacaOpened = false;

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      // statusBarColor: MyConstants().backgroundColor,
      // statusBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Colors.grey[400],
      systemNavigationBarColor: MyConstants().backgroundColor,
      systemNavigationBarIconBrightness: Brightness.dark
    ));

    return Scaffold(
      backgroundColor: MyConstants().backgroundColor,
      body: Stack(
        children: <Widget>[
          /// tampilan utama
          Positioned.fill(
            child: MainPageLayout(
              onTapTambahKota: () => setState(() => _isTambahKotaOpened = true),
              onTapPengaturan: () => setState(() => _isPengaturanOpened = true),
              onTapCuacaSekarang: () => setState(() => _isDetailCuacaOpened = true),
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    KotaFavorit(
                      isTerang: true,
                      namaKota: 'Malang',
                      suhu: 27,
                      kondisi: 'Cerah berawan',
                      gambarIconCuaca: 'assets/png/weather/glass/partly_cloudy.png',
                    ),
                    KotaFavorit(
                      isTerang: false,
                      namaKota: 'Lawang',
                      suhu: 21,
                      kondisi: 'Hujan',
                      gambarIconCuaca: 'assets/png/weather/glass/rainy.png',
                    ),
                  ],
                ),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    KotaFavorit(
                      isTerang: false,
                      namaKota: 'Purwodadi',
                      suhu: 20,
                      kondisi: 'Hujan dan petir',
                      gambarIconCuaca: 'assets/png/weather/glass/thunder.png',
                    ),
                    KotaFavorit(
                      isTerang: true,
                      namaKota: 'Pasuruan',
                      suhu: 28,
                      kondisi: 'Berawan',
                      gambarIconCuaca: 'assets/png/weather/glass/cloudy.png',
                    ),
                  ],
                ),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    KotaFavorit(
                      isTerang: true,
                      namaKota: 'Sukerojo',
                      suhu: 29,
                      kondisi: 'Cerah',
                      gambarIconCuaca: 'assets/png/weather/glass/sunny.png',
                    ),
                    KotaFavorit(
                      isTerang: true,
                      namaKota: 'Pandaan',
                      suhu: 30,
                      kondisi: 'Cerah',
                      gambarIconCuaca: 'assets/png/weather/glass/sunny.png',
                    ),
                  ],
                ),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    KotaFavorit(
                      isTerang: false,
                      namaKota: 'Arjosari',
                      suhu: 23,
                      kondisi: 'Hujan',
                      gambarIconCuaca: 'assets/png/weather/glass/rainy.png',
                    ),
                  ],
                ),
                SizedBox(height: 20.0,),
              ],
            ),
          ),

          /// overlay saat tombol Tambah kota baru ditekan dan muncul dialog
          /// atau panel untuk mencari kota.
          Positioned.fill(
            child: AnimatedCrossFade(
              crossFadeState: _isTambahKotaOpened ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: Duration(milliseconds: 500),
              firstCurve: Curves.easeInOutCubic,
              secondCurve: Curves.easeInOutCubic,
              firstChild: GestureDetector(
                onTap: () => setState(() => _isTambahKotaOpened = false),
                child: Container(
                  color: Colors.black45,
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
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOutCubic,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              width: MediaQuery.of(context).size.width,
              height: _isTambahKotaOpened ? 305 : 0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(18.0)),
                color: MyConstants().backgroundColor,
              ),
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 35.0,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () => setState(() => _isTambahKotaOpened = false),
                              borderRadius: BorderRadius.circular(15.0),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(LineAwesomeIcons.arrow_left, color: MyConstants().weatherDarkBackground,),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0,),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                              child: Text('Cari kota...', style: TextStyle(color: Colors.grey),),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  style: BorderStyle.solid,
                                  color: Colors.grey,
                                  width: 1.0
                                )
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Text('Pencarian sebelumnya', style: GoogleFonts.roboto(fontWeight: FontWeight.w300, fontSize: 16.0, color: Colors.black54),),
                    SizedBox(height: 20.0,),
                    ItemListTambahKotaPencarianSebelumnya(
                      kota: 'Bululawang, ',
                      kabDanProvinsi: 'Kab. Malang, Jawa Timur.',
                      suhu: '26°C',
                      kondisi: 'Cerah berawan',
                    ),
                    SizedBox(height: 10.0),
                    ItemListTambahKotaPencarianSebelumnya(
                      kota: 'Batu, ',
                      kabDanProvinsi: 'Malang, Jawa Timur.',
                      suhu: '22°C',
                      kondisi: 'Hujan dan petir',
                    ),
                  ],
                ),
              ),
            ),
          ),

          /// panel untuk halaman detail cuaca
          Positioned(
            right: 0,
            child: DetailCuacaPage(
              onPressed: () => setState(() => _isDetailCuacaOpened = false),
              width: _isDetailCuacaOpened ? MediaQuery.of(context).size.width : 0,
            )
          ),
        ],
      ),
    );
  }
}