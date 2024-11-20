import 'package:codelabs_101/pages/onboard2.dart';
import 'package:flutter/material.dart';

// const Color.fromARGB(250, 210, 125, 1)
// const Color.fromARGB(250, 210, 125, 1)
// const Color.fromARGB(250, 210, 125, 1)
class OnBoardPage1 extends StatefulWidget {
  const OnBoardPage1({Key? key}) : super(key: key);

  @override
  _OnBoardPage1State createState() => _OnBoardPage1State();
}

class _OnBoardPage1State extends State<OnBoardPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(248, 248, 248, 248),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 50),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                "Selamat Datang di SwiftCart!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                "assets/LogoSwiftCart2.png", // Path ke ilustrasi
                height: 250,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text(
                "Belanja online kini lebih cepat dan mudah. Temukan kebutuhan Anda dengan sekali sentuh, tanpa ribet.",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Aksi saat tombol ditekan
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const OnBoardPage2())); // Navigasi ke halaman berikutnya
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFAD27D), // Warna kuning pastel
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                "Lanjutkan",
                style: TextStyle(fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
