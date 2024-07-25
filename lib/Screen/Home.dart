import 'package:flutter/material.dart';
import 'package:movieapp/contract.dart';
import 'package:movieapp/model/Category.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late int category_select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
                child: Container(
                  padding: EdgeInsets.only(left: 7),
                  child: ListView.builder(
                    itemCount: categorys.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            category_select = index;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: Center(
                            child: Text(
                              categorys[index].title,
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white),
                            ),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 1),
                          decoration: BoxDecoration(
                              color: index == category_select
                                  ? primary_color
                                  : Colors.transparent,
                              border: index == category_select
                                  ? Border.all(
                                      color: const Color.fromARGB(
                                          62, 255, 255, 255),
                                    )
                                  : Border.all(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(12)),
                        )),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                margin: EdgeInsets.all(18),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Nổi bật",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 170,
                child: Container(
                  child: PageView.builder(
                    itemCount: 5,
                    controller: PageController(viewportFraction: 0.9),
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          children: [
                            Spacer(),
                            Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.2),
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(20))),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    "Thanh gươm diệt quỷ ss2",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://cdn.oneesports.vn/cdn-data/sites/4/2023/12/Anime_DemonSlayer_TotheHashiraTrainingmovie_OfficialPoster-1024x576-1.jpg")),
                            borderRadius: BorderRadius.circular(6)),
                        margin: EdgeInsets.symmetric(horizontal: 8),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
            ],
          ),
        ));
  }
}
