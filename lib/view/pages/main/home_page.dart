import 'package:flutter/material.dart';
import 'package:village/core/style.dart';
import 'package:village/view/widgets/main/categories.dart';
import 'package:village/view/widgets/main/place_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "예약할 공간을 찾고있나요? 👀",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Categories(),
                        SizedBox(height: 50),
                        Text(
                          "VILLAGE가 추천하는 기획전",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          child: Text("사진"),
                        ),
                        SizedBox(height: 50),
                        Text(
                          "스토리와 테마가 있는 \n공간을 추천드려요",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),

                      ],
                    ),
                  )
                ]))
          ];
        },
        body:
        ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: PlaceContainer(),
            );
          },
        ),
      ),
    );
  }
}
