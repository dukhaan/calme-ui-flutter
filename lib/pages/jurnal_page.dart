import 'package:flutter/material.dart';
import 'package:slicing_calme/theme.dart';
import 'package:unicons/unicons.dart';

class JurnalPage extends StatefulWidget {
  const JurnalPage({super.key});

  @override
  State<JurnalPage> createState() => _JurnalPageState();
}

class _JurnalPageState extends State<JurnalPage> {
  int _selectedIndex = 3;
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
                width: screenWidth * 0.27,
              ),
              Container(
                margin: EdgeInsets.only(top: screenHeight * 0.01),
                child: Text(
                  'Jurnal',
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.27,
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
              hintText: 'Cari topik jurnal menarik',
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
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Baca Artikel Calme Story Yuk!',
                    style: blackTextStyle.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Barangkali memecahkan pertanyaanmu',
                    style: blackTextStyle.copyWith(
                        fontSize: 12, fontWeight: FontWeight.w100),
                  ),
                ],
              ),
              Spacer(),
              Text(
                'Lihat Semua',
                style: secondaryTextStyle.copyWith(
                    fontSize: 12, fontWeight: FontWeight.w700),
              )
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
