import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Catalog(),
    );
  }
}

class Catalog extends StatefulWidget {
  const Catalog({super.key});

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset(
          "assets/icons/appbar.svg",
          width: 24,
          height: 24,
        ),
        title: Text(
          "Katalog",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
        ),
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: () {},
        // ),
        // actions: [
        //   SvgPicture.asset("assets/icons/appbar.svg"),
        // ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  )
                ),
              ),
              Gap(20),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Column(
                      children: [
                        Container(
                          clipBehavior: Clip.hardEdge,
                          height: 116.8,
                          width: 105,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7F7F7),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Text("Kiasdfas"),
                              Image.asset("assets/images/kiyim.png"),
                            ],
                          ),
                        ),
                        Gap(20),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          height: 116.8,
                          width: 105,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7F7F7),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Text("Kiasdfas"),
                              Image.asset("assets/images/karam.png"),
                            ],
                          ),
                        ),
                        Gap(20),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          height: 116.8,
                          width: 105,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7F7F7),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Text("Kiasdfas"),
                              Image.asset("assets/images/pockorin.png"),
                            ],
                          ),
                        ),
                        Gap(20),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          height: 116.8,
                          width: 105,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7F7F7),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Text("Kiasdfas"),
                              Image.asset("assets/images/balon.png"),
                            ],
                          ),
                        ),
                        Gap(20),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          height: 116.8,
                          width: 105,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7F7F7),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Text("Kiasdfas"),
                              Image.asset("assets/images/kirmoshina.png"),
                            ],
                          ),
                        ),
                        Gap(20),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          height: 116.5,
                          width: 105,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7F7F7),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Text("Kiasdfas"),
                              Image.asset("assets/images/daftar.png"),
                            ],
                          ),
                        ),
                        Gap(20),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          height: 116.8,
                          width: 105,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7F7F7),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Text("Kiasdfas"),
                              Image.asset("assets/images/tozalagich.png"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Column(
                      children: [
                        Container(
                          clipBehavior: Clip.hardEdge,
                          height: 116.8,
                          width: 105,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7F7F7),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Text("Kiasdfas"),
                              Image.asset("assets/images/yostiq.png"),
                            ],
                          ),
                        ),
                        Gap(20),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          height: 116.8,
                          width: 105,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7F7F7),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Text("Kiasdfas"),
                              Image.asset("assets/images/atir.png"),
                            ],
                          ),
                        ),
                        Gap(20),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          height: 116.8,
                          width: 105,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7F7F7),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Text("Kiasdfas"),
                              Image.asset("assets/images/tozalagich.png"),
                            ],
                          ),
                        ),
                        Gap(20),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          height: 116.8,
                          width: 105,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7F7F7),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Text("Kiasdfas"),
                              Image.asset("assets/images/plesteshin.png"),
                            ],
                          ),
                        ),
                        Gap(20),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          height: 116.8,
                          width: 105,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7F7F7),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Text("Kiasdfas"),
                              Image.asset("assets/images/divan.png"),
                            ],
                          ),
                        ),
                        Gap(20),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          height: 116.8,
                          width: 105,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7F7F7),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Text("Kiasdfas"),
                              Image.asset("assets/images/gul.png"),
                            ],
                          ),
                        ),
                        Gap(20),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          height: 116.8,
                          width: 105,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7F7F7),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Text("Kiasdfas"),
                              Image.asset("assets/images/uzuk.png"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Column(
                      children: [
                        Container(
                          clipBehavior: Clip.hardEdge,
                          height: 116.8,
                          width: 105,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7F7F7),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Text("Kiasdfas"),
                              Image.asset("assets/images/quyoncha.png"),
                            ],
                          ),
                        ),
                        Gap(20),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          height: 116.8,
                          width: 105,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7F7F7),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Text("Kiasdfas"),
                              Image.asset("assets/images/dori.png"),
                            ],
                          ),
                        ),
                        Gap(20),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          height: 116.8,
                          width: 105,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7F7F7),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Text("Kiasdfas"),
                              Image.asset("assets/images/top.png"),
                            ],
                          ),
                        ),
                        Gap(20),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          height: 116.8,
                          width: 105,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7F7F7),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Text("Kiasdfas"),
                              Image.asset("assets/images/noutbook.png"),
                            ],
                          ),
                        ),
                        Gap(20),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          height: 116.8,
                          width: 105,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7F7F7),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Text("Kiasdfas"),
                              Image.asset("assets/images/asbob.png"),
                            ],
                          ),
                        ),
                        Gap(20),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          height: 116.8,
                          width: 105,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7F7F7),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Text("Kiasdfas"),
                              Image.asset("assets/images/uzuk.png"),
                            ],
                          ),
                        ),
                        Gap(20),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          height: 116.8,
                          width: 105,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF7F7F7),
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
