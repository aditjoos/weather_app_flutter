import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailCuaca7Hari extends StatefulWidget {
  const DetailCuaca7Hari({super.key});

  @override
  State<DetailCuaca7Hari> createState() => _DetailCuaca7HariState();
}

class _DetailCuaca7HariState extends State<DetailCuaca7Hari> {
  var hari = ['Rabu', 'Kamis', 'Jumat', 'Sabtu', 'Minggu', 'Senin', 'Selasa'];

  var kondisi = [
    'Hujan',
    'Cerah berawan',
    'Hujan',
    'Hujan dan petir',
    'Hujan dan petir',
    'Hujan',
    'Cerah'
  ];

  var assetIndex = [2, 1, 2, 4, 4, 2, 3];

  var listAssets = [
    'assets/png/weather/glass/cloudy.png',
    'assets/png/weather/glass/partly_cloudy.png',
    'assets/png/weather/glass/rainy.png',
    'assets/png/weather/glass/sunny.png',
    'assets/png/weather/glass/thunder.png',
  ];

  var minDanMaxSuhu = [
    {
      'min': '22°C',
      'max': '26°C',
    },
    {
      'min': '24°C',
      'max': '29°C',
    },
    {
      'min': '21°C',
      'max': '26°C',
    },
    {
      'min': '19°C',
      'max': '25°C',
    },
    {
      'min': '18°C',
      'max': '25°C',
    },
    {
      'min': '21°C',
      'max': '27°C',
    },
    {
      'min': '24°C',
      'max': '30°C',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 15.0,
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 7,
          itemBuilder: (context, index) => Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.black12),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(hari[index],
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.0,
                                        color: Colors.white)),
                                Text(kondisi[index],
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16.0,
                                        color: Colors.white)),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0),
                                  child: Image.asset(
                                    listAssets[assetIndex[index]],
                                    height: 32.0,
                                  ),
                                ),
                                const SizedBox(width: 10.0),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      minDanMaxSuhu[index]['max'] ?? '',
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14.0,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      minDanMaxSuhu[index]['min'] ?? '',
                                      style: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.0,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
            ],
          ),
        )
      ],
    );
  }
}
