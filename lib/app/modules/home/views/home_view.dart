import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:my_tsel/app/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            text: 'Hai, ',
            style: TextStyle(fontSize: 18),
            children: [
              TextSpan(
                text: 'Muhammad',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        centerTitle: false,
        backgroundColor: Color(0xFFEC202E),
        elevation: 0,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 20),
              width: 20,
              height: 20,
              child: Image.asset(
                'assets/icons/qr.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              height: 250,
              width: Get.width,
              color: Color(0xFFEC2028),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Column(
                  children: [
                    ClipPath(
                      clipper: ClipInfoClass(),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        // height: 300,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFFE52D27), Color(0xFFB31217)],
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '081290112333',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Image.asset("assets/logo/simpati_logo.png"),
                              ],
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Sisa Pulsa Anda',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Rp 34.000',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Isi Pulsa',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0xFFF7B731)),
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Divider(color: Colors.black),
                            RichText(
                              text: TextSpan(
                                text: 'Belaku sampai ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                                children: [
                                  TextSpan(
                                    text: '19 April 2024',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Telkomsel POINT',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF7B731),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    '172',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          StatusCard(
                              title: 'Internet', data: '12', satuan: 'GB'),
                          StatusCard(
                              title: 'Telepon', data: '0', satuan: 'Menit'),
                          StatusCard(title: 'SMS', data: '23', satuan: 'SMS'),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                Container(
                  height: 7,
                  color: Colors.grey[200],
                ),
                // Scrollable
                Expanded(
                  child: Container(
                    // color: Colors.purple,
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            children: [
                              SizedBox(height: 20),
                              Text(
                                'Kategori Paket',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CategoryItem(
                                    title: 'Internet',
                                    icon: Icons.air,
                                  ),
                                  CategoryItem(
                                    title: 'Telp',
                                    icon: Icons.phone,
                                  ),
                                  CategoryItem(
                                    title: 'SMS',
                                    icon: Icons.message,
                                  ),
                                  CategoryItem(
                                    title: 'Roaming',
                                    icon: Icons.money,
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CategoryItem(
                                    title: 'Hiburan',
                                    icon: Icons.air,
                                  ),
                                  CategoryItem(
                                    title: 'Unggulan',
                                    icon: Icons.phone,
                                  ),
                                  CategoryItem(
                                    title: 'Tersimpan',
                                    icon: Icons.message,
                                  ),
                                  CategoryItem(
                                    title: 'Riwayat',
                                    icon: Icons.money,
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              // Terbaru dari Telkomsel
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Terbaru dari Telkomsel',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Lihat Semua',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              // Terbaru dari telkomsel Images
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    NewItem(
                                        imageAssetUrl:
                                            'assets/images/banner-1.png'),
                                    NewItem(
                                        imageAssetUrl:
                                            'assets/images/banner-2.png'),
                                  ],
                                ),
                              ),
                              SizedBox(height: 30),
                            ],
                          ),
                        ),
                        // Navigation
                        Card(
                          elevation: 4,
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            height: 65,
                            // color: Colors.amber,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ItemNav(
                                    status: true,
                                    title: 'Beranda',
                                    icon: Icon(Icons.home)),
                                ItemNav(
                                    status: false,
                                    title: 'Riwayat',
                                    icon: Icon(Icons.access_time)),
                                ItemNav(
                                    status: false,
                                    title: 'Bantuan',
                                    icon: Icon(Icons.help)),
                                ItemNav(
                                    status: false,
                                    title: 'Inbox',
                                    icon: Icon(Icons.mail)),
                                ItemNav(
                                    status: false,
                                    title: 'Akun Saya',
                                    icon: Icon(Icons.person)),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NewItem extends StatelessWidget {
  const NewItem({
    Key? key,
    required this.imageAssetUrl,
  }) : super(key: key);

  final String imageAssetUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: Get.width * 0.7,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage('$imageAssetUrl'), fit: BoxFit.cover)),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Icon(
            // Icons.interests,
            icon,
            color: Colors.red,
            size: 50,
          ),
        ),
        SizedBox(height: 5),
        Text('$title', style: TextStyle(fontSize: 16))
      ],
    );
  }
}

class ItemNav extends StatelessWidget {
  const ItemNav(
      {Key? key, required this.status, required this.title, required this.icon})
      : super(key: key);

  final bool status;
  final String title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30,
          child: IconButton(
            onPressed: () {},
            icon: icon,
            color: status ? Colors.red : Colors.black,
          ),
        ),
        SizedBox(height: 5),
        Text('$title',
            style: TextStyle(color: status ? Colors.red : Colors.black))
      ],
    );
  }
}

class StatusCard extends StatelessWidget {
  const StatusCard(
      {Key? key, required this.data, required this.title, required this.satuan})
      : super(key: key);

  final String title;
  final String data;
  final String satuan;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        width: Get.width * 0.25,
        // height: 70,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$title',
              style: TextStyle(fontSize: 16),
            ),
            RichText(
              text: TextSpan(
                  text: '$data',
                  style: TextStyle(
                      fontSize: 22,
                      color: Color(0xFFEC202B),
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: ' $satuan',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF747D8C),
                          fontWeight: FontWeight.bold),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 60);

    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 60);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class ClipInfoClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 80, size.height);
    path.lineTo(size.width, size.height - 80);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
