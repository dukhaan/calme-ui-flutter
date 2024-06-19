import 'package:flutter/material.dart';
import 'package:slicing_calme/theme.dart';
import 'package:unicons/unicons.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  int _selectedIndex = 4;
  @override
  Widget build(BuildContext context) {
    List<Widget> sections = [
      header(context),
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
      crossAxisAlignment: CrossAxisAlignment.start,
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
                width: screenWidth * 0.3,
              ),
              Container(
                margin: EdgeInsets.only(top: screenHeight * 0.01),
                child: Text(
                  'Profil',
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.3,
              ),
              Container(
                margin: EdgeInsets.only(top: screenHeight * 0.01),
                child: Icon(
                  UniconsLine.setting,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(
              left: screenWidth * 0.05, right: screenWidth * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/profilePhotoFix.png',
                width: 64,
                height: 64,
              ),
              SizedBox(
                width: 16,
              ),
              Container(
                margin: EdgeInsets.only(top: screenWidth * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fulan bin Fulan',
                      style: blackTextStyle.copyWith(
                          fontSize: 17, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'fulan@gmail.com',
                      style: blackTextStyle.copyWith(
                          fontSize: 12, fontWeight: FontWeight.w100),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 42,
        ),
        Container(
          padding: EdgeInsets.only(
              left: screenWidth * 0.05, right: screenWidth * 0.05),
          child: Text(
            'Aktivitas Saya',
            style: blackTextStyle.copyWith(
                fontSize: 17, fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          padding: EdgeInsets.all(12),
          height: 56,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Icon(
                UniconsLine.history,
                color: Colors.lightBlueAccent,
                size: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                'Jurnal Saya',
                style: blackTextStyle.copyWith(
                    fontSize: 14, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          padding: EdgeInsets.all(12),
          height: 56,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Icon(
                UniconsLine.bookmark,
                color: Colors.lightBlueAccent,
                size: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                'Artikel Disimpan',
                style: blackTextStyle.copyWith(
                    fontSize: 14, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          padding: EdgeInsets.all(12),
          height: 56,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Icon(
                UniconsLine.key_skeleton,
                color: Colors.lightBlueAccent,
                size: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                'Ganti Password',
                style: blackTextStyle.copyWith(
                    fontSize: 14, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Container(
          padding: EdgeInsets.only(
              left: screenWidth * 0.05, right: screenWidth * 0.05),
          child: Text(
            'Pusat Bantuan',
            style: blackTextStyle.copyWith(
                fontSize: 17, fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          padding: EdgeInsets.all(12),
          height: 56,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Color(0xFFDC3545),
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Icon(
                UniconsLine.sign_out_alt,
                color: Color(0xFFDC3545),
                size: 24,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                'Logout',
                style: alertTextStyle.copyWith(
                    fontSize: 14, fontWeight: FontWeight.w700),
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
