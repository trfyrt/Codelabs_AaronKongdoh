import 'package:codelabs_101/pages/onboard3.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

// const Color.fromARGB(250, 210, 125, 1)
// const Color.fromARGB(250, 210, 125, 1)
// const Color.fromARGB(250, 210, 125, 1)
class OnBoardPage2 extends StatefulWidget {
  const OnBoardPage2({Key? key}) : super(key: key);

  @override
  _OnBoardPage2State createState() => _OnBoardPage2State();
}

class _OnBoardPage2State extends State<OnBoardPage2> {
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
                "Kecepatan dalam genggaman!",
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
              child: SvgPicture.asset(
                "assets/orangRelax.svg", // Path ke ilustrasi
                height: 250,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text(
                "Pencarian instan dan akurat, Checkout kilat dalam hitungan detik, Lacak pesanan Anda secara real-time, dan masih banyak lagi!",
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
                            const OnBoardPage3())); // Navigasi ke halaman berikutnya
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
