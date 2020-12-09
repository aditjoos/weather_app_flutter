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
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 55.0,),
                  Text('Cuaca Disini', style: GoogleFonts.montserrat(fontWeight: FontWeight.w800, fontSize: 48.0, color: MyConstants().weatherDarkBackground)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 55.0),
                    child: Text('Situasi cuaca dimana kamu berada saat ini.', style: GoogleFonts.roboto(fontWeight: FontWeight.w300, fontSize: 18.0, color: Colors.black54), textAlign: TextAlign.center,),
                  ),
                  SizedBox(height: 30.0,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      color: MyConstants().weatherDarkBackground
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){},
                        borderRadius: BorderRadius.circular(18.0),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Pasuruan', style: GoogleFonts.montserrat(fontWeight: FontWeight.w700, fontSize: 32.0, color: Colors.white)),
                                      Text('Sel, 8 Des 13:47', style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 18.0, color: MyConstants().blueAccent),),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0, right: 10.0),
                                    child: Image.asset('assets/png/weather/glass/thunder.png', width: 100,),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('22°C', style: GoogleFonts.montserrat(fontWeight: FontWeight.w700, fontSize: 24.0, color: MyConstants().blueAccent)),
                                      Text('Petir', style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 18.0, color: Colors.white),),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text('Detail', style: GoogleFonts.roboto(fontWeight: FontWeight.w500, fontSize: 18.0, color: Colors.white),),
                                      Icon(LineAwesomeIcons.angle_right, color: Colors.white,),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0,),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                color: MyConstants().yellowAccent
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: (){},
                  splashColor: Colors.yellow[700],
                  borderRadius: BorderRadius.circular(18.0),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Tambah kota baru', style: GoogleFonts.roboto(fontWeight: FontWeight.w500, fontSize: 18.0, color: MyConstants().weatherDarkBackground),),
                        Icon(LineAwesomeIcons.angle_right, color: MyConstants().weatherDarkBackground,),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
