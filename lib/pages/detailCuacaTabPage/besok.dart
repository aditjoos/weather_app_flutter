import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';
import 'package:weather_app_flutter/components/myWidgets.dart';

class DetailCuacaBesok extends StatefulWidget {
  const DetailCuacaBesok({
    super.key,
    required this.isTerang,
    required this.listAssets,
  });

  final bool isTerang;
  final List<String> listAssets;

  @override
  State<DetailCuacaBesok> createState() => _DetailCuacaBesokState();
}

class _DetailCuacaBesokState extends State<DetailCuacaBesok> {
  List<String> listJamHariIni = [
    '7:00',
    '8:00',
    '9:00',
    '10:00',
    '11:00',
    '12:00',
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

  List<int> listPersenHariIniDark = [
    30,
    30,
    40,
    50,
    50,
    70,
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

  List<int> listPersenHariIniLight = [
    40,
    40,
    30,
    30,
    40,
    30,
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
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 15.0,
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Image.asset(
            widget.isTerang
                ? 'assets/png/weather/glass/sunny.png'
                : 'assets/png/weather/glass/rainy.png',
            height: 200,
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Rabu, 9 Desember',
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 18.0,
                  color: widget.isTerang
                      ? MyConstants().yellowAccent
                      : MyConstants().blueAccent),
            ),
            Text(
              'Hujan.',
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
                Text('50%',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        fontSize: 60.0,
                        color: widget.isTerang
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
              imgAsset: (widget.isTerang ? listPersenHariIniLight[index] : listPersenHariIniDark[index]) <
                      30
                  ? widget.listAssets[3]
                  : (widget.isTerang ? listPersenHariIniLight[index] : listPersenHariIniDark[index]) >= 30 &&
                          (widget.isTerang
                                  ? listPersenHariIniLight[index]
                                  : listPersenHariIniDark[index]) <
                              40
                      ? widget.listAssets[1]
                      : (widget.isTerang ? listPersenHariIniLight[index] : listPersenHariIniDark[index]) >= 40 &&
                              (widget.isTerang
                                      ? listPersenHariIniLight[index]
                                      : listPersenHariIniDark[index]) <
                                  50
                          ? widget.listAssets[0]
                          : (widget.isTerang ? listPersenHariIniLight[index] : listPersenHariIniDark[index]) >= 50 &&
                                  (widget.isTerang
                                          ? listPersenHariIniLight[index]
                                          : listPersenHariIniDark[index]) <
                                      70
                              ? widget.listAssets[2]
                              : (widget.isTerang
                                              ? listPersenHariIniLight[index]
                                              : listPersenHariIniDark[index]) >=
                                          70 &&
                                      (widget.isTerang
                                              ? listPersenHariIniLight[index]
                                              : listPersenHariIniDark[index]) <
                                          101
                                  ? widget.listAssets[4]
                                  : widget.listAssets[3],
              percent:
                  '${widget.isTerang ? listPersenHariIniLight[index] : listPersenHariIniDark[index]}%',
            ),
          ),
        ),
      ],
    );
  }
}
