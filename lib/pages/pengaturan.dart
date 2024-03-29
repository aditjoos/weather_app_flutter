import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';
import 'package:weather_app_flutter/components/myWidgets.dart';

class PengaturanPage extends StatefulWidget {
  const PengaturanPage({
    super.key,
    required this.width,
    required this.onPressed,
  });

  final double width;
  final VoidCallback onPressed;

  @override
  PengaturanPageState createState() => PengaturanPageState();
}

class PengaturanPageState extends State<PengaturanPage> {
  bool _isSuhuC = true;
  bool _isAnginKmh = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      curve: Curves.easeInOutCubic,
      width: widget.width,
      color: MyConstants().backgroundColor,
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 45.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: widget.onPressed,
                        borderRadius: BorderRadius.circular(15.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: LineIcon.arrowLeft(
                            color: MyConstants().weatherDarkBackground,
                          ),
                        ),
                      ),
                    ),
                    Text('Pengaturan',
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,
                            color: MyConstants().weatherDarkBackground)),
                  ],
                ),
                const SizedBox(
                  height: 35.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Satuan suhu',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                          color: MyConstants().weatherDarkBackground),
                    ),
                    SizedBox(
                      width: 150.0,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: GestureDetector(
                              onTap: () => setState(() => _isSuhuC = false),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.horizontal(
                                      left: Radius.circular(10.0)),
                                  color: !_isSuhuC
                                      ? MyConstants().yellowAccent
                                      : Colors.grey[100],
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 20.0),
                                    child: Text(
                                      'F',
                                      style: TextStyle(
                                          fontWeight: !_isSuhuC
                                              ? FontWeight.bold
                                              : FontWeight.normal,
                                          color: MyConstants()
                                              .weatherDarkBackground),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () => setState(() => _isSuhuC = true),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.horizontal(
                                      right: Radius.circular(10.0)),
                                  color: _isSuhuC
                                      ? MyConstants().yellowAccent
                                      : Colors.grey[100],
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 20.0),
                                    child: Text(
                                      'C',
                                      style: TextStyle(
                                          fontWeight: _isSuhuC
                                              ? FontWeight.bold
                                              : FontWeight.normal,
                                          color: MyConstants()
                                              .weatherDarkBackground),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Satuan kecepatan angin',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                          color: MyConstants().weatherDarkBackground),
                    ),
                    SizedBox(
                      width: 150.0,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: GestureDetector(
                              onTap: () => setState(() => _isAnginKmh = false),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.horizontal(
                                      left: Radius.circular(10.0)),
                                  color: !_isAnginKmh
                                      ? MyConstants().yellowAccent
                                      : Colors.grey[100],
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 20.0),
                                    child: Text(
                                      'mph',
                                      style: TextStyle(
                                          fontWeight: !_isAnginKmh
                                              ? FontWeight.bold
                                              : FontWeight.normal,
                                          color: MyConstants()
                                              .weatherDarkBackground),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () => setState(() => _isAnginKmh = true),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.horizontal(
                                      right: Radius.circular(10.0)),
                                  color: _isAnginKmh
                                      ? MyConstants().yellowAccent
                                      : Colors.grey[100],
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 20.0),
                                    child: Text(
                                      'Km/h',
                                      style: TextStyle(
                                          fontWeight: _isAnginKmh
                                              ? FontWeight.bold
                                              : FontWeight.normal,
                                          color: MyConstants()
                                              .weatherDarkBackground),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Aplikasi ini dibuat untuk mengikuti Flutter UI Challenge yang diselenggarakan oleh @flutteridn dan @udacoding_id. Source code aplikasi ini tersedia di repository github : github.com/aditjoos/weather_app_flutter_ui_challenge, dan source code tidak akan di-update setelah dikumpulkan hingga tanggal 20 Desember 2020.',
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 25.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'By aditjoos',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            LineIcon.instagram(size: 16, color: Colors.grey),
                            Text(
                              ' @aditjoos_',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            LineIcon.github(size: 16, color: Colors.grey),
                            Text(
                              ' aditjoos',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
