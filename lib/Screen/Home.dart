import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movieapp/contract.dart';
import 'package:movieapp/model/Category.dart';
import 'package:movieapp/until.dart';
import 'package:movieapp/widget/dot_pageview.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late int category_select = 0;
  final Dot_pageview _dot_pageview = Get.put(Dot_pageview());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Minicinema",
            style: TextStyle(
                fontFamily: "a",
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            InkWell(
              splashColor: Colors.transparent,
              onTap: () {},
              child: SizedBox(
                height: 50,
                width: 50,
                child: Icon(
                  CupertinoIcons.search,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 6,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 35,
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
              Title(
                title: "Nổi Bật",
              ),
              SizedBox(
                height: 170,
                child: Container(
                  child: PageView.builder(
                    onPageChanged: (value) {
                      _dot_pageview.i.value = value;
                    },
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
              SizedBox(
                  height: 4,
                  child: Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          5,
                          (j) => Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Dotpageview(
                                    active: _dot_pageview.i.value == j),
                              )),
                    ),
                  )),
              Title(title: "Gợi ý cho bạn"),
              SizedBox(
                height: 160,
                child: Container(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://img.ophim.live/uploads/movies/our-last-crusade-or-the-rise-of-a-new-world-season-2-thumb.jpg"))),
                        width: 120,
                        margin: EdgeInsets.symmetric(horizontal: 2),
                      );
                    },
                  ),
                ),
              ),
              Title(title: "Xem tiếp"),
            ],
          ),
        ));
  }
}

class Title extends StatelessWidget {
  const Title({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(18),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
