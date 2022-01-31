import 'package:flutter/material.dart';
import 'package:khadok_application_8/ui/carousel.dart';
import 'package:khadok_application_8/ui/route.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // endDrawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.green.shade100,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Carousel(),
            SizedBox(
              height: 10,
            ),
            _customButton(
                context: context,
                color: Colors.green.shade100,
                name: 'Bangla',
                image: 'assets/image/bangladeshi-food.png',
                onTab: () {
                  Navigator.pushNamed(context, AppRoute.informationbangla);
                }),
            _customButton(
                context: context,
                color: Colors.green.shade100,
                name: 'Chinese',
                image: 'assets/image/download.png',
                onTab: () {
                  Navigator.pushNamed(context, AppRoute.informationchinese);
                }),
          ],
        ),
      ),
    );
  }
}

Widget _customButton({
  @required BuildContext? context,
  @required Color? color,
  @required String? name,
  @required String? image,
  @required VoidCallback? onTab,
}) {
  return GestureDetector(
    onTap: onTab,
    child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      height: 150,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 12,
            child: Image.asset(
              '$image',
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              '$name',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    ),
  );
}
