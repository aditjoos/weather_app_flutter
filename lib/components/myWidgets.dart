import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';

class MyConstants {
  final Color backgroundColor = const Color(0xFFececec);
  final Color weatherDarkBackground = const Color(0xFF373748);
  final Color weatherLightBackground = const Color(0xFF5555ff);
  final Color yellowAccent = const Color(0xFFffdd55);
  final Color blueAccent = const Color(0xFF00a3ff);
}

class CuacaDisiniNotCollapsed extends StatelessWidget {
  const CuacaDisiniNotCollapsed({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 10.0,
          ),
          Text('Cuaca Disini',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w800,
                  fontSize: 48.0,
                  color: MyConstants().weatherDarkBackground)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 55.0),
            child: Text(
              'Situasi cuaca di kota dimana kamu berada saat ini.',
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w300,
                  fontSize: 18.0,
                  color: Colors.black54),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                color: MyConstants().weatherDarkBackground),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
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
                              Text('Purwosari',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 32.0,
                                      color: Colors.white)),
                              Text(
                                'Sel, 8 Des 13:47',
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18.0,
                                    color: MyConstants().blueAccent),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 10.0, right: 10.0),
                            child: Image.asset(
                              'assets/png/weather/glass/thunder.png',
                              width: 100,
                            ),
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
                              Text('22°C',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24.0,
                                      color: MyConstants().blueAccent)),
                              Text(
                                'Hujan dan petir.',
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18.0,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Detail',
                                style: GoogleFonts.roboto(
                                    fontSize: 18.0, color: Colors.white),
                              ),
                              const LineIcon.angleRight(
                                color: Colors.white,
                              ),
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
    );
  }
}

class CuacaDisiniIsCollapsed extends StatelessWidget {
  const CuacaDisiniIsCollapsed({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Cuaca disini',
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
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                color: MyConstants().weatherDarkBackground),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
                borderRadius: BorderRadius.circular(18.0),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Purwosari',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 28.0,
                                  color: Colors.white)),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('22°C',
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18.0,
                                      color: MyConstants().blueAccent)),
                              const SizedBox(width: 5.0),
                              const LineIcon.minus(
                                color: Colors.white,
                              ),
                              const SizedBox(width: 5.0),
                              Text(
                                'Hujan dan petir.',
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18.0,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/png/weather/glass/thunder.png',
                            width: 64,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const LineIcon.angleRight(
                            color: Colors.white,
                          ),
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
    );
  }
}

class KotaFavorit extends StatelessWidget {
  const KotaFavorit({
    super.key,
    required this.onTap,
    required this.isTerang,
    required this.namaKota,
    required this.suhu,
    required this.kondisi,
    required this.gambarIconCuaca,
  });

  final VoidCallback onTap;
  final bool isTerang;
  final String namaKota;
  final int suhu;
  final String kondisi;
  final String gambarIconCuaca;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width / 2) - 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0),
          color: isTerang
              ? MyConstants().weatherLightBackground
              : MyConstants().weatherDarkBackground),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(18.0),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(namaKota,
                        style: GoogleFonts.montserrat(
                            fontSize: 20.0, color: Colors.white)),
                    Image.asset(
                      gambarIconCuaca,
                      width: 32.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text('$suhu°C',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 28.0,
                        color: isTerang
                            ? MyConstants().yellowAccent
                            : MyConstants().blueAccent)),
                Text(
                  kondisi,
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TambahKotaPencarian extends StatelessWidget {
  const TambahKotaPencarian({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 35.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: onTap,
                    borderRadius: BorderRadius.circular(15.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: LineIcon.arrowLeft(
                        color: MyConstants().weatherDarkBackground,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            style: BorderStyle.solid,
                            color: Colors.grey,
                            width: 1.0)),
                    child: const Text(
                      'Cari kota...',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            'Pencarian sebelumnya',
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w300,
                fontSize: 16.0,
                color: Colors.black54),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const ItemListTambahKotaPencarianSebelumnya(
            kota: 'Bululawang, ',
            kabDanProvinsi: 'Kab. Malang, Jawa Timur.',
            suhu: '26°C',
            kondisi: 'Cerah berawan',
          ),
          const SizedBox(height: 10.0),
          const ItemListTambahKotaPencarianSebelumnya(
            kota: 'Batu, ',
            kabDanProvinsi: 'Malang, Jawa Timur.',
            suhu: '22°C',
            kondisi: 'Hujan dan petir',
          ),
        ],
      ),
    );
  }
}

class ItemListTambahKotaPencarianSebelumnya extends StatelessWidget {
  const ItemListTambahKotaPencarianSebelumnya({
    super.key,
    required this.kota,
    required this.kabDanProvinsi,
    required this.suhu,
    required this.kondisi,
  });

  final String kota;
  final String kabDanProvinsi;
  final String suhu;
  final String kondisi;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.grey[300]),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(15.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(kota,
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.0,
                                  color: MyConstants().weatherDarkBackground)),
                          Text(kabDanProvinsi,
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.0,
                                  color: MyConstants().weatherDarkBackground)),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(suhu,
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.0,
                                  color: MyConstants().weatherDarkBackground)),
                          const SizedBox(width: 5.0),
                          LineIcon.minus(
                            color: MyConstants().weatherDarkBackground,
                          ),
                          const SizedBox(width: 5.0),
                          Text(
                            kondisi,
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.0,
                                color: MyConstants().weatherDarkBackground),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class TabButton extends StatelessWidget {
  const TabButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.active,
  });

  final VoidCallback onTap;
  final String text;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(15.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 30.0),
          child: Text(
            text,
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
                color: active ? Colors.white : Colors.white30),
          ),
        ),
      ),
    );
  }
}

class KondisiPerJam extends StatelessWidget {
  const KondisiPerJam({
    super.key,
    required this.jam,
    required this.imgAsset,
    required this.percent,
  });

  final String jam;
  final String imgAsset;
  final String percent;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            jam,
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
                color: Colors.white),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Expanded(
            child: Image.asset(
              imgAsset,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            percent,
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
                color: Colors.white),
          ),
        ],
      ),
    );
  }
}
