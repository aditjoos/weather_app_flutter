import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:weather_app_flutter_ui_challenge/components/myWidgets.dart';

class DetailCuacaPage extends StatelessWidget {
  DetailCuacaPage({
    this.onPressed,
    this.width,
  });

  final VoidCallback onPressed;
  final double width;

  var listJamHariIni = ['13:00','14:00','15:00','16:00','17:00','18:00','19:00','20:00','21:00','22:00','23:00','24:00','1:00','2:00','3:00','4:00','5:00','6:00',];
  var listPersenHariIni = [70,60,60,50,50,40,50,50,40,40,40,40,40,40,40,40,40,40,];

  var listAssets = [
    'assets/png/weather/glass/cloudy.png',
    'assets/png/weather/glass/partly_cloudy.png',
    'assets/png/weather/glass/rainy.png',
    'assets/png/weather/glass/sunny.png',
    'assets/png/weather/glass/thunder.png',
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 350),
      curve: Curves.easeInOutCubic,
      width: width,
      color: MyConstants().weatherDarkBackground,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 45.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: onPressed,
                      borderRadius: BorderRadius.circular(15.0),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(LineAwesomeIcons.arrow_left, color: Colors.white,),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text('Purwosari', style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 18.0, color: Colors.white)),
                      Text('Kab. Pasuruan, Jawa Timur.', style: GoogleFonts.roboto(fontWeight: FontWeight.w300, fontSize: 16.0, color: Colors.white),)
                    ],
                  ),
                ],
              ),
              SizedBox(height: 35.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TabButton(
                    onTap: (){},
                    text: 'Hari Ini',
                    active: true,
                  ),
                  TabButton(
                    onTap: (){},
                    text: 'Besok',
                    active: false,
                  ),
                  TabButton(
                    onTap: (){},
                    text: '7 Hari',
                    active: false,
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 15.0,),
                      Image.asset('assets/png/weather/glass/thunder.png', width: 250,),
                      SizedBox(height: 15.0,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Selasa, 8 Desember', style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 18.0, color: MyConstants().blueAccent),),
                          Text('Hujan dan petir.', style: GoogleFonts.roboto(fontWeight: FontWeight.w600, fontSize: 18.0, color: Colors.white),),
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
                              Text('22°C', style: GoogleFonts.montserrat(fontWeight: FontWeight.w700, fontSize: 60.0, color: MyConstants().blueAccent)),
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
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}