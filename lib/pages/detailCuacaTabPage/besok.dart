import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:weather_app_flutter_ui_challenge/components/myWidgets.dart';

class DetailCuacaBesok extends StatelessWidget {
  DetailCuacaBesok({
    this.isTerang,
    this.listAssets,
  });

  final bool isTerang;
  final List<String> listAssets;

  List<String> listJamHariIni = ['7:00','8:00','9:00','10:00','11:00','12:00','13:00','14:00','15:00','16:00','17:00','18:00','19:00','20:00','21:00','22:00','23:00','24:00','1:00','2:00','3:00','4:00','5:00','6:00',];
  List<int> listPersenHariIniDark = [30,30,40,50,50,70,70,60,60,50,50,40,50,50,40,40,40,40,40,40,40,40,40,40,];

  List<int> listPersenHariIniLight = [40,40,30,30,40,30,30,20,20,30,40,40,40,40,40,50,50,50,50,40,40,40,40,40,];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 15.0,),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Image.asset(isTerang ? 'assets/png/weather/glass/sunny.png' : 'assets/png/weather/glass/rainy.png', height: 200,),
        ),
        SizedBox(height: 15.0,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Rabu, 9 Desember', style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 18.0, color: isTerang ? MyConstants().yellowAccent : MyConstants().blueAccent),),
            Text('Hujan.', style: GoogleFonts.roboto(fontWeight: FontWeight.w600, fontSize: 18.0, color: Colors.white),),
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
                Text('50%', style: GoogleFonts.montserrat(fontWeight: FontWeight.w700, fontSize: 60.0, color: isTerang ? MyConstants().yellowAccent : MyConstants().blueAccent)),
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
              imgAsset: (isTerang ? listPersenHariIniLight[index] : listPersenHariIniDark[index]) < 30 ? listAssets[3] :
                (isTerang ? listPersenHariIniLight[index] : listPersenHariIniDark[index]) >= 30 && (isTerang ? listPersenHariIniLight[index] : listPersenHariIniDark[index]) < 40 ? listAssets[1] :
                (isTerang ? listPersenHariIniLight[index] : listPersenHariIniDark[index]) >= 40 && (isTerang ? listPersenHariIniLight[index] : listPersenHariIniDark[index]) < 50 ? listAssets[0] :
                (isTerang ? listPersenHariIniLight[index] : listPersenHariIniDark[index]) >= 50 && (isTerang ? listPersenHariIniLight[index] : listPersenHariIniDark[index]) < 70 ? listAssets[2] :
                (isTerang ? listPersenHariIniLight[index] : listPersenHariIniDark[index]) >= 70 && (isTerang ? listPersenHariIniLight[index] : listPersenHariIniDark[index]) < 101 ? listAssets[4] : listAssets[3],
              percent: (isTerang ? listPersenHariIniLight[index] : listPersenHariIniDark[index]).toString() + '%',
            ),
          ),
        ),
      ],
    );
  }
}