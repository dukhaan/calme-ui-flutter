import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'package:slicing_calme/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> sections = [
      body(),
      rating(),
      chatBot(),
      currentMeditation(),
      latihanPernapasan(),
      bacaArtikel(),
      coping(),
      batasanKosong(),
    ];

    return Expanded(
      child: Scaffold(
        backgroundColor: const Color(0xffFAFAFA),
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: ListView.separated(
            itemCount: sections.length,
            itemBuilder: (context, index) => sections[index],
            separatorBuilder: (context, index) => const SizedBox(
              height: 12,
            ),
          ),
        ),
        bottomNavigationBar: customNavBar(),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, '/home');
        break;
      case 1:
        Navigator.pushReplacementNamed(context, '/meditasi');
        break;
      case 2:
        Navigator.pushReplacementNamed(context, '/artikel');
        break;
      case 3:
        Navigator.pushReplacementNamed(context, '/jurnal');
        break;
      case 4:
        Navigator.pushReplacementNamed(context, '/profil');
        break;
    }
  }

  Widget customNavBar() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(9),
        child: BottomNavigationBar(
          selectedLabelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.lightBlue,
          mouseCursor: MaterialStateMouseCursor.clickable,
          onTap: _onItemTapped,
          backgroundColor: Colors.white,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(UniconsLine.house_user),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(UniconsLine.headphones),
              label: 'Meditasi',
            ),
            BottomNavigationBarItem(
              icon: Icon(UniconsLine.newspaper),
              label: 'Artikel',
            ),
            BottomNavigationBarItem(
              icon: Icon(UniconsLine.document_info),
              label: 'Jurnal',
            ),
            BottomNavigationBarItem(
              icon: Icon(UniconsLine.user),
              label: 'Profil',
            ),
          ],
          currentIndex: _selectedIndex,
        ),
      ),
    );
  }
}

Widget body() {
  return Container(
    padding: EdgeInsets.only(top: 24, left: 16, right: 16, bottom: 16),
    color: Colors.white,
    child: Row(
      children: [
        Container(
          width: 287,
          height: 40,
          margin: const EdgeInsets.only(right: 8),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Cari Sesuatu',
              hintStyle: greyTextStyle,
              prefixIcon: Icon(
                Icons.search,
                color: greyColor,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10),
              border: OutlineInputBorder(
                gapPadding: 12,
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Colors.grey),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Container(
          width: 36,
          height: 36,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/profile.png'),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    ),
  );
}

Widget rating() {
  return SingleChildScrollView(
    child: Container(
      padding: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 4),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Gimana perasaanmu hari ini, Fulan?',
                style: blackTextStyle.copyWith(
                    fontSize: 14, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 8,
              ),
            ],
          ),
          SizedBox(
            height: 48,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/sangatTidakPuass.png',
                  width: 48,
                  height: 48,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 16,
                ),
                Image.asset('assets/tidakPuas.png',
                    width: 48, height: 48, fit: BoxFit.cover),
                const SizedBox(
                  width: 16,
                ),
                Image.asset('assets/biasaSaja.png',
                    width: 48, height: 48, fit: BoxFit.cover),
                const SizedBox(
                  width: 16,
                ),
                Image.asset('assets/puas.png',
                    width: 48, height: 48, fit: BoxFit.cover),
                const SizedBox(
                  width: 16,
                ),
                Image.asset('assets/sangatPuasBanget.png',
                    width: 48, height: 48, fit: BoxFit.cover),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    ),
  );
}

Widget chatBot() {
  return Container(
    padding: EdgeInsets.all(defaultMargin),
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Gimana Harimu?',
          style: blackTextStyle.copyWith(
            fontSize: 14,
            fontWeight: bold,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Yuk cerita bareng, curhat \natau diskusi masalahmu \nbersama CalmeBot!',
              style: greyTextStyle.copyWith(
                fontSize: 12,
                fontWeight: light,
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            Container(
              width: 146,
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 14),
              decoration: ShapeDecoration(
                color: Color(0xFF02BBDD),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x0A5887A4),
                    blurRadius: 32,
                    offset: Offset(0, 8),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Cerita di sini, yuk!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.bold,
                      height: 0,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    ),
  );
}

Widget currentMeditation() {
  return Container(
    padding: EdgeInsets.all(defaultMargin),
    color: Colors.white,
    child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Yuk Lanjutin Meditasimu!',
            style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: bold,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Lanjutkan meditasi, temukan kedamaianmu',
            style: greyTextStyle.copyWith(fontSize: 12),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            padding: EdgeInsets.all(12),
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/stayHome.png',
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                  padding: EdgeInsets.only(top: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tenang di Rumah',
                        style: whiteTextStyle.copyWith(
                            fontSize: 12, fontWeight: bold),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Menenangkan pikiran di rumah',
                        style: whiteTextStyle.copyWith(
                            fontSize: 12, fontWeight: FontWeight.w100),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            padding: EdgeInsets.all(12),
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/loveSelf.png',
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                  padding: EdgeInsets.only(top: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cintai Diri Sendiri',
                        style: whiteTextStyle.copyWith(
                            fontSize: 12, fontWeight: bold),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Hei, dirimu itu berharga, lho!',
                        style: whiteTextStyle.copyWith(
                            fontSize: 12, fontWeight: FontWeight.w100),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            padding: EdgeInsets.all(12),
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: Color(0xFF02BBDD),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/astronout.png',
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                  padding: EdgeInsets.only(top: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Upgrade Diri Kamu',
                        style: whiteTextStyle.copyWith(
                            fontSize: 12, fontWeight: bold),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Jadi versi terbaik diri kamu',
                        style: whiteTextStyle.copyWith(
                            fontSize: 12, fontWeight: FontWeight.w100),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget latihanPernapasan() {
  return Container(
    color: Colors.white,
    child: Stack(
      alignment: Alignment.centerLeft,
      children: [
        Image.asset(
          'assets/latihanPernapasan.png',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          child: Row(
            children: [
              SizedBox(
                width: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Latihan Pernapasan',
                    style: whiteTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: bold,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Buat badan jadi tenang dan rileks\ndengan teknik bubble breath',
                    style: whiteTextStyle.copyWith(fontSize: 12),
                  )
                ],
              ),
              SizedBox(
                width: 24,
              ),
              Image.asset(
                'assets/buttonMulai.png',
                width: 125,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget bacaArtikel() {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.all(defaultMargin),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Baca Artikel Calme Story Yuk!',
              style: blackTextStyle.copyWith(
                fontSize: 14,
                fontWeight: bold,
              ),
            ),
            Text(
              'Lihat Semua',
              style: secondaryTextStyle.copyWith(
                fontSize: 12,
                fontWeight: bold,
              ),
            )
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Barangkali memecahkan pertanyaanmu',
          style: greyTextStyle.copyWith(
            fontSize: 12,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/introverMudahOvt.png',
                    width: 64,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Introver Mudah Overthinking:\nMitos atau Fakta',
                        style: lightBlueTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Fulanah S.Psi * 5 menit * 21/06/2023',
                        style: greyTextStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/buku.png',
                    width: 64,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mengenal Poetry Therapy, Puisi\nUntuk Sehat Mental',
                        style: blackTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Fulanah S.Psi * 5 menit * 21/06/2023',
                        style: greyTextStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/buku.png',
                    width: 64,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ikigai: Cara Orang Jepang\nMenemukan Tujuan Hidup',
                        style: blackTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Fulanah S.Psi * 5 menit * 21/06/2023',
                        style: greyTextStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget coping() {
  return Center(
    child: Container(
      padding: EdgeInsets.all(defaultMargin),
      color: Color(0xFF02BBDD),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/coping.png',
                height: 56,
                width: 58,
              ),
            ],
          ),
          SizedBox(
            width: 16,
          ),
          Container(
            padding: EdgeInsets.only(top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Coping Skills Toolbox',
                  style: whiteTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: bold,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Tips buatmu sehat jasmani rohani',
                  style: whiteTextStyle.copyWith(
                      fontSize: 12, fontWeight: FontWeight.w100),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Image.asset(
              'assets/nextButton.png',
              width: 32,
            ),
          )
        ],
      ),
    ),
  );
}

Widget batasanKosong() {
  return Container(
    padding: EdgeInsets.only(top: 32),
    color: const Color(0xffFFFFFF),
    height: 48,
  );
}
