import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slicing_calme/theme.dart';
import 'package:unicons/unicons.dart';

class MeditasiPage extends StatefulWidget {
  const MeditasiPage({super.key});

  @override
  State<MeditasiPage> createState() => _MeditasiPageState();
}

class _MeditasiPageState extends State<MeditasiPage> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    List<Widget> sections = [
      header(context),
      body(),
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

  Widget header(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: 16,
        ),
        Container(
          padding: const EdgeInsets.all(18),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 42,
                height: 42,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/backIconFix.png'),
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.25,
              ),
              Container(
                margin: EdgeInsets.only(top: screenHeight * 0.01),
                child: Text(
                  'Meditasi',
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.25,
              ),
              Container(
                width: 42,
                height: 42,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/profile.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Cari topik meditasi',
              hintStyle: greyTextStyle.copyWith(
                fontSize: 12,
              ),
              prefixIcon: Icon(
                Icons.search,
                color: greyColor,
                size: 18,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 1),
              border: OutlineInputBorder(
                gapPadding: 12,
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                    color: Color(0xFFDFE0E0),
                    width: 1,
                    style: BorderStyle.solid),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          alignment: screenWidth > 768
              ? Alignment.center
              : AlignmentDirectional.topStart,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Topik Meditasi Calme',
                style: blackTextStyle.copyWith(
                    fontSize: 14, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 8,
              ),
              Text('Yuk lihat playlist yang udah kami buat!',
                  style: blackTextStyle.copyWith(
                      fontSize: 12, fontWeight: FontWeight.w400)),
            ],
          ),
        ),
      ],
    );
  }

  Widget body() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          padding: EdgeInsets.all(12),
          width: double.infinity,
          height: 82,
          decoration: BoxDecoration(
            color: Color(0xFFFFB703),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                width: 54,
                'assets/stayHome.png',
              ),
              SizedBox(
                width: 16,
              ),
              Container(
                padding: EdgeInsets.only(top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Tenang di Rumah',
                          style: whiteTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: bold,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '* 3 sesi',
                          style: TextStyle(
                            color: Color(0xFFFFF1CD),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Expanded(
                      child: Text(
                        'Menenangkan pikiran di rumah',
                        style: TextStyle(
                          color: Color(0xFFFFF1CD),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.only(top: 10),
                child: Image.asset(
                  'assets/dropDown.png',
                  width: 30,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          padding: EdgeInsets.all(12),
          width: double.infinity,
          height: 82,
          decoration: BoxDecoration(
            color: Color(0xFFF8627F),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                width: 54,
                'assets/loveSelf.png',
              ),
              SizedBox(
                width: 16,
              ),
              Container(
                padding: EdgeInsets.only(top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SingleChildScrollView(
                          child: Text(
                            'Cintai diri sendiri',
                            style: whiteTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '* 3 sesi',
                          style: TextStyle(
                            color: Color(0xFFFFF1CD),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Expanded(
                      child: Text(
                        'Hei, dirimu itu berharga, lho!',
                        style: TextStyle(
                          color: Color(0xFFFFF1CD),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.only(top: 10),
                child: Image.asset(
                  'assets/dropDown.png',
                  width: 30,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          padding: EdgeInsets.all(12),
          width: double.infinity,
          height: 82,
          decoration: BoxDecoration(
            color: Color(0xFF02BBDD),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                width: 54,
                'assets/astronout.png',
              ),
              SizedBox(
                width: 16,
              ),
              Container(
                padding: EdgeInsets.only(top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SingleChildScrollView(
                          child: Text(
                            'Upgrade Diri Kamu',
                            style: whiteTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '* 3 sesi',
                          style: TextStyle(
                            color: Color(0xFFFFF1CD),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Expanded(
                      child: Text(
                        'Jadi versi terbaik diri kamu',
                        style: TextStyle(
                          color: Color(0xFFFFF1CD),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.only(top: 10),
                child: Image.asset(
                  'assets/dropDown.png',
                  width: 30,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          padding: EdgeInsets.all(12),
          width: double.infinity,
          height: 82,
          decoration: BoxDecoration(
            color: Color(0xFF41C063),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                width: 54,
                'assets/target.png',
              ),
              SizedBox(
                width: 16,
              ),
              Container(
                padding: EdgeInsets.only(top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SingleChildScrollView(
                          child: Text(
                            'Yuk Menata Target',
                            style: whiteTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '* 3 sesi',
                          style: TextStyle(
                            color: Color(0xFFFFF1CD),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Expanded(
                      child: Text(
                        'Hidup itu perlu punya target, lho!',
                        style: TextStyle(
                          color: Color(0xFFFFF1CD),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.only(top: 10),
                child: Image.asset(
                  'assets/dropDown.png',
                  width: 30,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          padding: EdgeInsets.all(12),
          width: double.infinity,
          height: 82,
          decoration: BoxDecoration(
            color: Color(0xFFDC3545),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                width: 54,
                'assets/kecemasan.png',
              ),
              SizedBox(
                width: 16,
              ),
              Container(
                padding: EdgeInsets.only(top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SingleChildScrollView(
                          child: Text(
                            'Stres & Kecemasan',
                            style: whiteTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '* 3 sesi',
                          style: TextStyle(
                            color: Color(0xFFFFF1CD),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Expanded(
                      child: Text(
                        'Olah stres & kecemasan diri',
                        style: TextStyle(
                          color: Color(0xFFFFF1CD),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.only(top: 10),
                child: Image.asset(
                  'assets/dropDown.png',
                  width: 30,
                ),
              ),
            ],
          ),
        ),
      ],
    );
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
}
