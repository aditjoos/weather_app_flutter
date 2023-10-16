import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';
import 'package:weather_app_flutter/components/myWidgets.dart';
import 'package:weather_app_flutter/pages/detailCuacaTabPage/7Hari.dart';
import 'package:weather_app_flutter/pages/detailCuacaTabPage/besok.dart';
import 'package:weather_app_flutter/pages/detailCuacaTabPage/hariIni.dart';

class DetailCuacaPage extends StatefulWidget {
  const DetailCuacaPage({
    super.key,
    required this.onPressed,
    required this.isTerang,
    required this.width,
    required this.asset,
    required this.listJamHariIni,
    required this.listPersenHariIni,
  });

  final VoidCallback onPressed;

  final bool isTerang;

  final double width;

  final String asset;

  final List<String> listJamHariIni;

  final List<int> listPersenHariIni;

  @override
  DetailCuacaPageState createState() => DetailCuacaPageState();
}

class DetailCuacaPageState extends State<DetailCuacaPage> {
  var listAssets = [
    'assets/png/weather/glass/cloudy.png',
    'assets/png/weather/glass/partly_cloudy.png',
    'assets/png/weather/glass/rainy.png',
    'assets/png/weather/glass/sunny.png',
    'assets/png/weather/glass/thunder.png',
  ];

  int tabPage = 0;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      curve: Curves.easeInOutCubic,
      width: widget.width,
      color: widget.isTerang
          ? MyConstants().weatherLightBackground
          : MyConstants().weatherDarkBackground,
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 45.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: widget.onPressed,
                        borderRadius: BorderRadius.circular(15.0),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: LineIcon.arrowLeft(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(widget.isTerang ? 'Malang' : 'Purwosari',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize: 18.0,
                                color: Colors.white)),
                        Text(
                          widget.isTerang
                              ? 'Malang, Jawa timur.'
                              : 'Kab. Pasuruan, Jawa Timur.',
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w300,
                              fontSize: 16.0,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TabButton(
                      onTap: () => setState(() => tabPage = 0),
                      text: 'Hari Ini',
                      active: tabPage == 0 ? true : false,
                    ),
                    TabButton(
                      onTap: () => setState(() => tabPage = 1),
                      text: 'Besok',
                      active: tabPage == 1 ? true : false,
                    ),
                    TabButton(
                      onTap: () => setState(() => tabPage = 2),
                      text: '7 Hari',
                      active: tabPage == 2 ? true : false,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: tabPage == 0
                        ? DetailCuacaHariIni(
                            asset: widget.asset,
                            isTerang: widget.isTerang,
                            listJamHariIni: widget.listJamHariIni,
                            listPersenHariIni: widget.listPersenHariIni,
                            listAssets: listAssets,
                          )
                        : tabPage == 1
                            ? DetailCuacaBesok(
                                isTerang: widget.isTerang,
                                listAssets: listAssets,
                              )
                            : DetailCuaca7Hari(),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
