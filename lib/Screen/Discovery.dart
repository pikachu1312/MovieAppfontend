import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/contract.dart';
import 'package:movieapp/model/Category.dart';
import 'package:movieapp/model/flags.dart';

class Discovery extends StatefulWidget {
  const Discovery({super.key});

  @override
  State<Discovery> createState() => _DiscoveryState();
}

class _DiscoveryState extends State<Discovery> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Inputvoice(),
            const SizedBox(
              height: 12,
            ),
            tille_seeall(
              title: "Phim theo quốc gia",
              seeall: () {
                print("seeall");
              },
            ),
            SizedBox(
              height: 35,
              child: Container(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: countries.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(6)),
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      child: Center(
                          child: Text(
                        countries[index],
                        style: TextStyle(color: Colors.white),
                      )),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Khám phá",
          style: TextStyle(fontSize: 16, color: Colors.red),
        ),
      ),
    ));
  }
}

class tille_seeall extends StatelessWidget {
  tille_seeall({super.key, required this.title, required this.seeall});
  final String title;
  final VoidCallback seeall;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, bottom: 12, right: 12),
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Tìm phim theo quốc gia",
            style: TextStyle(color: Colors.red, fontSize: 13),
          ),
          InkWell(
            onTap: seeall,
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Text(
                  "See all",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Inputvoice extends StatelessWidget {
  const Inputvoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 13, horizontal: 12),
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          cursorColor: Colors.white,
          style: TextStyle(fontSize: 15, color: Colors.white),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 13, vertical: -5),
            fillColor: Color.fromARGB(24, 255, 255, 255),
            filled: true,
            hintStyle: TextStyle(
                fontSize: 12, color: const Color.fromARGB(52, 158, 158, 158)),
            hintText: "Ví dụ:phim về mèo máy",
            prefixIcon: Icon(
              CupertinoIcons.search,
              color: Colors.white,
            ),
            suffixIcon: IconButton(
              icon: Icon(CupertinoIcons.mic),
              onPressed: () {},
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.red.withOpacity(0.7))),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}
