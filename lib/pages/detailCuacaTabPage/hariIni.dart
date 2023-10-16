import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';
import 'package:weather_app_flutter/components/myWidgets.dart';

class DetailCuacaHariIni extends StatelessWidget {
  const DetailCuacaHariIni({
    super.key,
    required this.asset,
    required this.isTerang,
    required this.listJamHariIni,
    required this.listPersenHariIni,
    required this.listAssets,
  });

  final String asset;
  final bool isTerang;

  final List<String> listJamHariIni;
  final List<int> listPersenHariIni;

  final List<String> listAssets;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 15.0,
        ),
        Image.asset(
          asset,
          height: 250,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Selasa, 8 Desember',
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 18.0,
                  color: isTerang
                      ? MyConstants().yellowAccent
                      : MyConstants().blueAccent),
            ),
            Text(
              isTerang ? 'Cerah dan berawan' : 'Hujan dan petir.',
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,
                  color: Colors.white),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Angin',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      'Kelembaban',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      'Indeks UV',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      'Tekanan',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '20,1km/j',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w300,
                          fontSize: 16.0,
                          color: Colors.white),
                    ),
                    Text(
                      '88%',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w300,
                          fontSize: 16.0,
                          color: Colors.white),
                    ),
                    Text(
                      '2',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w300,
                          fontSize: 16.0,
                          color: Colors.white),
                    ),
                    Text(
                      '850mb',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w300,
                          fontSize: 16.0,
                          color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(isTerang ? '27°C' : '22°C',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        fontSize: 60.0,
                        color: isTerang
                            ? MyConstants().yellowAccent
                            : MyConstants().blueAccent)),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const LineIcon.arrowUp(
                          color: Colors.white,
                          size: 14.0,
                        ),
                        Text('25°C',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w700,
                                fontSize: 16.0,
                                color: Colors.white)),
                      ],
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Row(
                      children: <Widget>[
                        const LineIcon.arrowDown(
                          color: Colors.white,
                          size: 14.0,
                        ),
                        Text('18°C',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w700,
                                fontSize: 16.0,
                                color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 25.0,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            LineIcon.umbrella(
              color: Colors.white,
              size: 18.0,
            ),
            Text(' Kemungkinan hujan adalah 90%',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.0,
                    color: Colors.white)),
          ],
        ),
        const SizedBox(
          height: 15.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - 40.0,
          height: 150.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(15.0),
            physics: const BouncingScrollPhysics(),
            itemCount: listJamHariIni.length,
            itemBuilder: (context, index) => KondisiPerJam(
              jam: listJamHariIni[index],
              imgAsset: listPersenHariIni[index] < 30
                  ? listAssets[3]
                  : listPersenHariIni[index] >= 30 &&
                          listPersenHariIni[index] < 40
                      ? listAssets[1]
                      : listPersenHariIni[index] >= 40 &&
                              listPersenHariIni[index] < 50
                          ? listAssets[0]
                          : listPersenHariIni[index] >= 50 &&
                                  listPersenHariIni[index] < 70
                              ? listAssets[2]
                              : listPersenHariIni[index] >= 70 &&
                                      listPersenHariIni[index] < 101
                                  ? listAssets[4]
                                  : listAssets[3],
              percent: '${listPersenHariIni[index]}%',
            ),
          ),
        ),
      ],
    );
  }
}
