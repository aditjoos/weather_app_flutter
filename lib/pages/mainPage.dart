import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';
import 'package:weather_app_flutter/components/myWidgets.dart';

class MainPageLayout extends StatefulWidget {
  const MainPageLayout({
    super.key,
    required this.onTapTambahKota,
    required this.onTapPengaturan,
    required this.onTapCuacaSekarang,
    required this.children,
  });

  final VoidCallback onTapTambahKota;
  final VoidCallback onTapPengaturan;
  final VoidCallback onTapCuacaSekarang;
  final List<Widget> children;

  @override
  MainPageLayoutState createState() => MainPageLayoutState();
}

class MainPageLayoutState extends State<MainPageLayout> {
  bool _cuacaDisiniIsCollapsed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 45.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                onTap: widget.onTapPengaturan,
                borderRadius: BorderRadius.circular(15.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LineIcon.cog(
                    color: MyConstants().weatherDarkBackground,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: MyConstants().yellowAccent),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: widget.onTapTambahKota,
                    splashColor: Colors.yellow[700],
                    borderRadius: BorderRadius.circular(15.0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Tambah kota baru',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.0,
                                color: MyConstants().weatherDarkBackground),
                          ),
                          const SizedBox(width: 5.0),
                          LineIcon.plus(
                            color: MyConstants().weatherDarkBackground,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          AnimatedCrossFade(
            crossFadeState: _cuacaDisiniIsCollapsed
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            duration: const Duration(milliseconds: 800),
            firstCurve: Curves.easeInOutCubic,
            secondCurve: Curves.easeInOutCubic,
            sizeCurve: Curves.easeInOutCubic,
            firstChild: CuacaDisiniNotCollapsed(
              onTap: widget.onTapCuacaSekarang,
            ),
            secondChild: CuacaDisiniIsCollapsed(
              onTap: widget.onTapCuacaSekarang,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Kota favorit',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                    color: MyConstants().weatherDarkBackground),
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: NotificationListener<ScrollUpdateNotification>(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: widget.children,
                ),
              ),
              onNotification: (t) {
                double position = 0;

                // scroll down
                if (t.metrics.pixels > position && t.metrics.pixels > 50) {
                  if (!_cuacaDisiniIsCollapsed)
                    setState(() => _cuacaDisiniIsCollapsed = true);
                }
                // scroll up
                else {
                  if (_cuacaDisiniIsCollapsed)
                    setState(() => _cuacaDisiniIsCollapsed = false);
                }

                position = t.metrics.pixels;

                return true;
              },
            ),
          )
        ],
      ),
    );
  }
}
