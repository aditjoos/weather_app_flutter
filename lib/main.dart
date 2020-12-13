import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:weather_app_flutter_ui_challenge/components/myWidgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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

  bool _cuacaDisiniIsCollapsed = false;
  bool _isContentScrollable = false;

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: MyConstants().backgroundColor,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: MyConstants().backgroundColor,
      systemNavigationBarIconBrightness: Brightness.dark
    ));

    return Scaffold(
      backgroundColor: MyConstants().backgroundColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 45.0,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: (){},
                  borderRadius: BorderRadius.circular(15.0),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(LineAwesomeIcons.cog, color: MyConstants().weatherDarkBackground,),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: MyConstants().yellowAccent
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: (){},
                      splashColor: Colors.yellow[700],
                      borderRadius: BorderRadius.circular(15.0),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Tambah kota baru', style: GoogleFonts.roboto(fontWeight: FontWeight.w500, fontSize: 14.0, color: MyConstants().weatherDarkBackground),),
                            SizedBox(width: 5.0),
                            Icon(LineAwesomeIcons.plus, color: MyConstants().weatherDarkBackground,),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            AnimatedCrossFade(
              crossFadeState: _cuacaDisiniIsCollapsed ? CrossFadeState.showSecond : CrossFadeState.showFirst,
              duration: Duration(milliseconds: 800),
              firstCurve: Curves.easeInOutCubic,
              secondCurve: Curves.easeInOutCubic,
              sizeCurve: Curves.easeInOutCubic,
              firstChild: CuacaDisiniNotCollapsed(),
              secondChild: CuacaDisiniIsCollapsed(),
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Kota favorit', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700, color: MyConstants().weatherDarkBackground),),
              ],
            ),
            SizedBox(height: 20.0,),
            Expanded(
              child: NotificationListener<ScrollUpdateNotification>(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
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
                onNotification: (t) {
                  double position = 0;

                  // scroll down
                  if(t.metrics.pixels > position && t.metrics.pixels > 50) {
                    if(!_cuacaDisiniIsCollapsed) setState(() => _cuacaDisiniIsCollapsed = true);
                  }
                  // scroll up
                  else {
                    if(_cuacaDisiniIsCollapsed) setState(() => _cuacaDisiniIsCollapsed = false);
                  }
                  
                  position = t.metrics.pixels;
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}