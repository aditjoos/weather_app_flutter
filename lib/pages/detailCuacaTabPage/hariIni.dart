import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:weather_app_flutter_ui_challenge/components/myWidgets.dart';

class DetailCuacaHariIni extends StatelessWidget {
  DetailCuacaHariIni({
    this.asset,
    this.isTerang,
    this.listJamHariIni,
    this.listPersenHariIni,
    this.listAssets,
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
        SizedBox(height: 15.0,),
        Image.asset(asset, height: 250,),
        SizedBox(height: 15.0,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Selasa, 8 Desember', style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 18.0, color: isTerang ? MyConstants().yellowAccent : MyConstants().blueAccent),),
            Text(isTerang ? 'Cerah dan berawan' : 'Hujan dan petir.', style: GoogleFonts.roboto(fontWeight: FontWeight.w600, fontSize: 18.0, color: Colors.white),),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Angin', style: GoogleFonts.roboto(fontWeight: FontWeight.w500, fontSize: 16.0, color: Colors.white),),
                      SizedBox(height: 3.0,),
                      Text('Kelembaban', style: GoogleFonts.roboto(fontWeight: FontWeight.w500, fontSize: 16.0, color: Colors.white),),
                      SizedBox(height: 3.0,),
                      Text('Indeks UV', style: GoogleFonts.roboto(fontWeight: FontWeight.w500, fontSize: 16.0, color: Colors.white),),
                      SizedBox(height: 3.0,),
                      Text('Tekanan', style: GoogleFonts.roboto(fontWeight: FontWeight.w500, fontSize: 16.0, color: Colors.white),),
                    ],
                  ),
                  SizedBox(width: 20.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('20,1km/j', style: GoogleFonts.roboto(fontWeight: FontWeight.w300, fontSize: 16.0, color: Colors.white),),
                      Text('88%', style: GoogleFonts.roboto(fontWeight: FontWeight.w300, fontSize: 16.0, color: Colors.white),),
                      Text('2', style: GoogleFonts.roboto(fontWeight: FontWeight.w300, fontSize: 16.0, color: Colors.white),),
                      Text('850mb', style: GoogleFonts.roboto(fontWeight: FontWeight.w300, fontSize: 16.0, color: Colors.white),),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(isTerang ? '27°C' : '22°C', style: GoogleFonts.montserrat(fontWeight: FontWeight.w700, fontSize: 60.0, color: isTerang ? MyConstants().yellowAccent : MyConstants().blueAccent)),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(LineAwesomeIcons.arrow_up, color: Colors.white, size: 14.0,),
                        Text('25°C', style: GoogleFonts.montserrat(fontWeight: FontWeight.w700, fontSize: 16.0, color: Colors.white)),
                      ],
                    ),
                    SizedBox(width: 10.0,),
                    Row(
                      children: <Widget>[
                        Icon(LineAwesomeIcons.arrow_down, color: Colors.white, size: 14.0,),
                        Text('18°C', style: GoogleFonts.montserrat(fontWeight: FontWeight.w700, fontSize: 16.0, color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 25.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(LineAwesomeIcons.umbrella, color: Colors.white, size: 18.0,),
            Text(' Kemungkinan hujan adalah 90%', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0, color: Colors.white)),
          ],
        ),
        SizedBox(height: 15.0,),
        Container(
          width: MediaQuery.of(context).size.width - 40.0,
          height: 150.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(15.0),
            physics: BouncingScrollPhysics(),
            itemCount: listJamHariIni.length,
            itemBuilder: (context, index) => KondisiPerJam(
              jam: listJamHariIni[index],
              imgAsset: listPersenHariIni[index] < 30 ? listAssets[3] :
                listPersenHariIni[index] >= 30 && listPersenHariIni[index] < 40 ? listAssets[1] :
                listPersenHariIni[index] >= 40 && listPersenHariIni[index] < 50 ? listAssets[0] :
                listPersenHariIni[index] >= 50 && listPersenHariIni[index] < 70 ? listAssets[2] :
                listPersenHariIni[index] >= 70 && listPersenHariIni[index] < 101 ? listAssets[4] : listAssets[3],
              percent: listPersenHariIni[index].toString() + '%',
            ),
          ),
        ),
      ],
    );
  }
}